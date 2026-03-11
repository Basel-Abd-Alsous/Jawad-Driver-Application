import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:location/location.dart' hide LocationAccuracy;
import 'package:permission_handler/permission_handler.dart';
import 'package:sliding_action_button/sliding_action_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:audioplayers/audioplayers.dart';

import ' route_utils.dart';
import '../../../core/constant/api_link.dart';
import '../../../core/context/global.dart';
import '../../../core/function/pick_image.dart';
import '../../../core/function/show_snackbar.dart';
import '../../../core/services/api_services/api_client.dart';
import '../../../core/services/api_services/dio_helper.dart';
import '../../../core/services/background/foreground_services.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/location_helper.dart';
import '../../../core/widget/widget_dailog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../../layout/domain/model/user_model.dart';
import '../../layout/domain/usecase/work_status_usecase.dart';
import '../domain/model/travel_requist_model.dart';
import '../domain/status_travel_enum.dart';
import '../domain/usecase/home_usecase.dart';
import 'enum_socti.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUsecase homeUsecase;
  final WorkStatusUsecase workStatusUsecase;

  WebSocketChannel? _channel;
  String brodcast = '';
  bool _isManuallyClosed = false;
  ValueNotifier<TravelRequest?> currentTravel = ValueNotifier(const TravelRequest());
  ValueNotifier<String> remainingAmount = ValueNotifier('');
  ValueNotifier<TravelStatus?> travelStatus = ValueNotifier(TravelStatus.pending);
  AudioPlayer player = AudioPlayer();
  Set<String> points = <String>{};
  final distance = 0.0;
  final SlideToActionController circleSlideToActionController = SlideToActionController();
  final key = GlobalKey<FormState>();
  TextEditingController ammount = TextEditingController();
  ValueNotifier<bool> followUser = ValueNotifier(true);
  double? _lastLat;
  double? _lastLng;

  HomeCubit({required this.homeUsecase, required this.workStatusUsecase}) : super(const HomeState.initial()) {
    getWorkStatus();
  }

  double? _currentLat;
  double? _currentLng;
  double? _currentAccuracy;
  double? _currentSpeed;
  bool _inTrip = false;
  ValueNotifier<bool> running = ValueNotifier(false);
  final FlutterBackgroundService _service = FlutterBackgroundService();
  final userDate = sl<Box<Driver>>().get(BoxKey.user);
  // ============================== Work Status Functions ============================== //

  Future<void> getWorkStatus() async {
    if (userDate?.workStatus == true) {
      await Future.wait([connect(), getUserLocation(), startBackgroundService()]);
    } else {
      await shutdownAllServices();
    }
  }

  Future<void> switchWorkStatus(BuildContext context) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await workStatusUsecase();
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          erorrDialog(failure.message);
          emit(HomeState.errorWorkStatus(failure.message));
        },
        (data) async {
          SmartDialog.dismiss();
          sl<Box<Driver>>().put(BoxKey.user, data.data!.payload!.driver!);
          final user = sl<Box<Driver>>().get(BoxKey.user);

          if (user?.workStatus == true) {
            // ✅ تفعيل خدمة الخلفية عند بدء العمل
            // await startBackgroundService();
            connect();
          } else {
            // ❌ إيقاف خدمة الخلفية عند إنهاء العمل
            await shutdownAllServices();
            _disconnect();
          }
        },
      );
    } catch (e) {
      logger.e('Error in Switch Work Status : $e');
    }
  }

  Future<void> shutdownAllServices() async {
    await Future.wait([stopBackgroundServiceFully(), _disconnect()]);
    _currentLat = null;
    _currentLng = null;
    _currentSpeed = null;
    _currentAccuracy = null;
    _inTrip = false;
    logger.i('''
🛠️ حالة الخدمة:
✅ الخدمة تعمل: ${running.value}
📡 الـ WebSocket: ${_channel != null ? "متصل" : "غير متصل"}
🚗 وضع الرحلة: ${DynamicConfig.isInTrip ? "مفعل" : "غير مفعل"}
👤 حالة العمل: ${userDate?.workStatus == true ? "يعمل" : "متوقف"}
''');
  }

  // ============================== Permission Functions ============================== //

  Future<void> havePermissionMap() async {
    bool? havePermission = await _requestLocationPermission();
    if (havePermission == false) await _requestLocationPermission();
  }

  Future<bool> _requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      print("✅ Location permission granted");
      return true;
    } else if (status.isDenied) {
      print("❌ Location permission denied");
      return false;
    } else if (status.isPermanentlyDenied) {
      print("⚠️ Location permission permanently denied, open settings");
      await openAppSettings();
      return false;
    }
    return false;
  }

  // ============================== Init Google Map Functions ============================== //

  String? mapStyleString;
  GoogleMapController? mapController;
  final Location location = Location();
  ValueNotifier<LatLng> initialPosition = ValueNotifier(const LatLng(24.7136, 46.6753));
  Set<Circle> circles = {};

  Future<void> getUserLocation() async {
    try {
      emit(const HomeState.loadingMap());
      LocationHelper().getCurrentLocation().then((locationData) async {
        initialPosition.value = LatLng(locationData?.latitude ?? 0.0, locationData?.longitude ?? 0.0);
        final arrivedLocation = await _getAddressFromLatLng(locationData?.latitude ?? 0, locationData?.longitude ?? 0);
        final puckupityLocation = await _getCityLatLng(locationData?.latitude ?? 0, locationData?.longitude ?? 0);
        final arrivedCityLocation = await _getCityLatLng(locationData?.latitude ?? 0, locationData?.longitude ?? 0);
        logger.i('arrivedLocation : ${arrivedLocation.toString()}/n puckupityLocation : ${puckupityLocation.toString()}/n arrivedCityLocation : ${arrivedCityLocation.toString()} ');
        circles.addAll([
          Circle(circleId: const CircleId('user_circle'), center: initialPosition.value, radius: 200, fillColor: Colors.black87.withOpacity(0.3), strokeColor: Colors.black87, strokeWidth: 2),
        ]);
        mapController?.animateCamera(CameraUpdate.newLatLngZoom(initialPosition.value, 15));
      });

      emit(const HomeState.loadedMap());
    } catch (e, stack) {
      logger.w(e.toString() + stack.toString());
    }
  }

  Function(GoogleMapController)? onMapCreated() {
    return (controller) {
      mapController = controller;
      mapController?.setMapStyle(mapStyleString);
    };
  }

  // ============================== Background Service Functions ============================== //

  Future<void> startBackgroundService() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _service.configure(
        iosConfiguration: IosConfiguration(autoStart: false, onForeground: backgroundEntryPoint),
        androidConfiguration: AndroidConfiguration(
          onStart: backgroundEntryPoint,
          autoStart: false,
          isForegroundMode: false,
          notificationChannelId: "foreground_channel",
          foregroundServiceNotificationId: 888,
          initialNotificationTitle: "Jawad Driver",
          initialNotificationContent: "Foreground Service",
          foregroundServiceTypes: [AndroidForegroundType.location, AndroidForegroundType.dataSync],
        ),
      );
      running.value = await _service.startService();
      await Future.wait([_checkServiceStatus(), _playBackgroundLocationListener()]);
    });
  }

  Future<void> _checkServiceStatus() async {
    try {
      bool isRunning = await _service.isRunning();
      logger.i('''
🛠️ حالة الخدمة:
✅ الخدمة تعمل: $isRunning
📡 الـ WebSocket: ${_channel != null ? "متصل" : "غير متصل"}
🚗 وضع الرحلة: ${DynamicConfig.isInTrip ? "مفعل" : "غير مفعل"}
👤 حالة العمل: ${sl<Box<Driver>>().get(BoxKey.user)?.workStatus == true ? "يعمل" : "متوقف"}
''');
      _sendTestLocation();
    } catch (e) {
      logger.e('❌ خطأ في فحص حالة الخدمة: $e');
    }
  }

  Future<void> _sendTestLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
      await sendLocation(position.latitude.toString(), position.longitude.toString());
      logger.i('🧪 إرسال موقع تجريبي: ${position.latitude}, ${position.longitude}');
    } catch (e) {
      logger.e('❌ فشل الإرسال التجريبي: $e');
    }
  }

  Future<void> toggleTripMode(bool inTrip) async {
    try {
      _service.invoke('setTripMode', {'inTrip': inTrip});
      logger.i('🔄 تم تبديل الوضع إلى: ${inTrip ? "رحلة 🚗" : "عادي 🏠"}');
    } catch (e) {
      logger.e('❌ فشل تبديل وضع الرحلة: $e');
    }
  }

  Future<void> _playBackgroundLocationListener() async {
    _service.on('updateLocation').listen((event) async {
      if (event == null) return;

      final lat = (event['latitude'] as num?)?.toDouble();
      final lng = (event['longitude'] as num?)?.toDouble();
      final acc = (event['accuracy'] as num?)?.toDouble();
      final speed = (event['speed'] as num?)?.toDouble();
      final inTrip = event['in_trip'] as bool?;

      if (lat == null || lng == null) return;

      _getServiceStatistics();

      _currentLat = lat;
      _currentLng = lng;
      _currentAccuracy = acc;
      _currentSpeed = speed;
      _inTrip = inTrip ?? false;

      final newPosition = LatLng(lat, lng);
      initialPosition.value = newPosition;

      // =========================
      // 📏 فلترة الحركة الصغيرة
      // =========================
      if (_lastLat != null && _lastLng != null) {
        double distanceMoved = Geolocator.distanceBetween(_lastLat!, _lastLng!, lat, lng);

        if (distanceMoved < 5) {
          logger.d("🚫 تجاهل حركة أقل من 5 متر");
          return;
        }
      }

      _lastLat = lat;
      _lastLng = lng;

      // =========================
      // 🎥 تحريك الكاميرا
      // =========================
      if (mapController != null && followUser.value) {
        try {
          await mapController!.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newPosition, zoom: 15)));
        } catch (e) {
          logger.e("Camera error: $e");
        }
      }

      // =========================
      // 📡 إرسال الموقع للسيرفر
      // =========================
      await sendLocation(lat.toString(), lng.toString());

      // =========================
      // 🚗 تتبع الرحلة
      // =========================
      if (currentTravel.value?.id != null) {
        await _trackingToPrivateChannel(currentTravel.value!.id!);
      }
    });

    // =========================
    // 📊 مراقبة حالة الخدمة
    // =========================
    _service.on('serviceStatus').listen((event) {
      logger.i('📊 حالة الخدمة: $event');
    });
  }

  Future<void> _getServiceStatistics() async {
    try {
      _service.invoke('getStatistics');
    } catch (e) {
      logger.e('❌ فشل الحصول على الإحصائيات: $e');
    }
  }

  Future<void> stopBackgroundServiceFully() async {
    try {
      _service.invoke('stopService'); // 👈 هذا فقط
      running.value = false;
    } catch (e) {
      logger.e('❌ Failed to stop background service: $e');
    }
  }

  // ============================== Travel Functions ============================== //

  Future<void> sendLocation(String lat, String long) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';

      final response = await client.postRequest(endpoint: ApiLinks.updateDriverLocation, body: {"latitude": lat, "longitude": long, "driving_status": 1}, authorization: token);

      if (response.response.statusCode != 200) {
        logger.d('❌ فشل في إرسال الموقع: ${response.response.data['message']}');
      } else {
        logger.d('✅ تم إرسال الموقع (${response.response.statusCode})');
      }
    } catch (e) {
      logger.d('❌ خطأ أثناء إرسال الموقع: $e');
    }
  }

  Future<void> getTravelRequist() async {
    emit(const HomeState.loadingTravelRequest());
    final result = await homeUsecase.travelRequist();
    result.fold(
      (failure) {
        erorrDialog(failure.message);
        emit(HomeState.errorTravelRequest(failure.message));
      },
      (result) {
        emit(HomeState.loadedTravelRequest(result.data!));
      },
    );
  }

  Future<void> currentTravelRequist() async {
    final result = await homeUsecase.currentTravelRequist();
    result.fold(
      (l) {
        SmartDialog.dismiss();
        erorrDialog(l.message);
      },
      (r) async {
        currentTravel.value = r.data;
        if (currentTravel.value != null) {
          if ((r.data?.status?.value ?? '') == TravelStatus.completed.name) {
            travelStatus.value = TravelStatus.pending;
            currentTravel.value = const TravelRequest();
            GlobalContext.context.pop();
            points.clear();
            ammount.clear();
            await getTravelRequist();
          } else {
            travelStatus.value = _selectedTravelStatus(r.data?.status?.value ?? '');
          }
          _trackingToPrivateChannel(currentTravel.value?.id ?? 0);
        }
        if (travelStatus.value == TravelStatus.completed) {
          remainingAmount.value = r.data?.remainingAmount ?? '';
        }
        SmartDialog.dismiss();
      },
    );
  }

  TravelStatus _selectedTravelStatus(String status) {
    switch (status) {
      case 'pinding':
        return travelStatus.value = TravelStatus.pending;
      case 'assigned':
        return travelStatus.value = TravelStatus.assigned;
      case 'arrived':
        return travelStatus.value = TravelStatus.arrived;
      case 'started':
        return travelStatus.value = TravelStatus.started;
      case 'paymant':
        return travelStatus.value = TravelStatus.completed;
      case 'completed':
        return travelStatus.value = TravelStatus.completed;
      case 'canceled':
        return travelStatus.value = TravelStatus.canceled;
      default:
        return travelStatus.value = TravelStatus.pending;
    }
  }

  Future<void> approveTravel(int id) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    final result = await homeUsecase.approveTravelRequist(id);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        final cureentState = state;
        if (cureentState is _LoadedTravelRequest) {
          final newList = List<TravelRequest>.from(cureentState.userModel);
          newList.removeWhere((element) => element.id == id);
          emit(HomeState.loadedTravelRequest(newList));
        }
        erorrDialog(l.message);
      },
      (r) async {
        travelStatus.value = TravelStatus.assigned;
        await currentTravelRequist();
      },
    );
  }

  Future<void> rejectTravel(int id) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    final result = await homeUsecase.rejectTravelRequist(id);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        final cureentState = state;
        if (cureentState is _LoadedTravelRequest) {
          final newList = List<TravelRequest>.from(cureentState.userModel);
          newList.removeWhere((element) => element.id == id);
          emit(HomeState.loadedTravelRequest(newList));
        }
        erorrDialog(l.message);
      },
      (r) {
        final curentState = state;
        if (curentState is _LoadedTravelRequest) {
          final newList = List<TravelRequest>.from(curentState.userModel);
          newList.removeWhere((element) => element.id == id);
          emit(HomeState.loadedTravelRequest(newList));
        }
        SmartDialog.dismiss();
      },
    );
  }

  Future<void> cancelTravel(int id) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    final result = await homeUsecase.cancelTravelRequist(id);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        erorrDialog(l.message);
      },
      (r) async {
        travelStatus.value = TravelStatus.pending;
        await currentTravelRequist();
        await getTravelRequist();
        SmartDialog.dismiss();
      },
    );
  }

  Future<void> arrivalTravel(int id) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      String lat = '';
      String long = '';
      await Geolocator.getCurrentPosition().then((position) async {
        log('📍 تحديث الموقع في الخلفية: (${position.latitude}, ${position.longitude})');
        lat = position.latitude.toString();
        long = position.longitude.toString();
      });
      final result = await homeUsecase.arrivalTravelRequist(id, lat, long);
      result.fold(
        (l) {
          SmartDialog.dismiss();
          erorrDialog(l.message);
        },
        (r) async {
          travelStatus.value = TravelStatus.arrived;
          await currentTravelRequist();
        },
      );
    } catch (e) {
      log('Error When Arrival Travel : $e');
    }
  }

  Future<void> startTravel(int id, String lat, String long) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    Position pos = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
    _currentLat = pos.latitude;
    _currentLng = pos.longitude;

    final result = await homeUsecase.startTravelRequist(id);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        erorrDialog(l.message);
      },
      (r) async {
        travelStatus.value = TravelStatus.started;
        points.clear();

        // ✅ تفعيل وضع الرحلة في الخلفية
        await toggleTripMode(true);

        await currentTravelRequist();
        launchMap(lat, long);
      },
    );
  }

  Future<void> endTravel() async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      List<Map<String, dynamic>> rawPoints = _getAllTripLocations(currentTravel.value?.id ?? 0);
      Position pos = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
      final arrivedLocation = await _getAddressFromLatLng(pos.latitude, pos.longitude);
      final puckupityLocation = await _getCityLatLng(rawPoints.first['latitude'], rawPoints.first['longitude']);
      final arrivedCityLocation = await _getCityLatLng(pos.latitude, pos.longitude);
      rawPoints.add({"latitude": pos.latitude, "longitude": pos.longitude, "updatedWhen": DateTime.now().toIso8601String()});
      log(arrivedLocation.toString());
      log(puckupityLocation.toString());
      log(arrivedCityLocation.toString());
      final result = await homeUsecase.endTravelRequist(currentTravel.value?.id ?? 0, arrivedLocation, arrivedCityLocation, puckupityLocation, rawPoints);
      result.fold(
        (l) {
          SmartDialog.dismiss();
          erorrDialog(l.message);
        },
        (r) async {
          // ❌ إيقاف وضع الرحلة بعد انتهاء الرحلة
          await toggleTripMode(false);
          currentTravel.value = r.data;
          remainingAmount.value = r.data!.remainingAmount ?? "";
          if (remainingAmount.value != '' && remainingAmount.value != '0' && remainingAmount.value != '0.0') {
            travelStatus.value = TravelStatus.payment;
            ammount.text = remainingAmount.value;
            points.clear();
            SmartDialog.dismiss();
            SmartDialog.dismiss();
          } else {
            travelStatus.value = TravelStatus.pending;
            currentTravel.value = null;
            points.clear();
            ammount.clear();
            SmartDialog.dismiss();
            SmartDialog.dismiss();
            await getTravelRequist();
            GlobalContext.context.pop();
          }
        },
      );
    } catch (e) {
      logger.e('Error When End Travel : $e');
      SmartDialog.dismiss();
      SmartDialog.show(
        builder: (context) => WidgetDilog(isError: true, title: 'Warning', message: 'Something went wrong : $e', onCancel: () => SmartDialog.dismiss(), cancelText: 'Back'),
      );
    }
  }

  Future<void> skipPayment() async {
    travelStatus.value = TravelStatus.pending;
    currentTravel.value = const TravelRequest();
    await Future.wait([getTravelRequist(), currentTravelRequist()]);
    points.clear();
    ammount.clear();
  }

  Future<String> _getAddressFromLatLng(double lat, double lng) async {
    try {
      List<geocoding.Placemark> placemarks = await geocoding.placemarkFromCoordinates(lat, lng);
      geocoding.Placemark place = placemarks.first;

      return "${place.street}, ${place.subLocality}, ${place.locality}";
    } catch (e) {
      logger.e("Reverse Geocoding Error: $e");
      return "$lat,$lng"; // fallback to coordinates
    }
  }

  Future<String> _getCityLatLng(double lat, double lng) async {
    try {
      final placemarks = await geocoding.placemarkFromCoordinates(lat, lng);
      if (placemarks.isEmpty) return '$lat,$lng';
      final place = placemarks.first;
      return place.locality ?? place.administrativeArea ?? place.country ?? '$lat,$lng';
    } catch (e) {
      logger.e('Reverse Geocoding Error: $e');
      return '$lat,$lng';
    }
  }

  List<Map<String, dynamic>> _getAllTripLocations(int travelId) {
    final box = sl<Box>(instanceName: BoxKey.appBox);
    final key = 'trip.$travelId';
    final List<dynamic> data = box.get(key, defaultValue: []) as List<dynamic>;
    return data.map<Map<String, dynamic>>((item) {
      return Map<String, dynamic>.from(item as Map);
    }).toList();
  }

  Future<void> payRemaningTravel(String? totalsss) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    final result = await homeUsecase.payTravelRequist(currentTravel.value?.id ?? 0, ammount.text);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        erorrDialog(l.message);
      },
      (r) async {
        SmartDialog.dismiss();
        travelStatus.value = TravelStatus.pending;
        currentTravel.value = const TravelRequest();
        GlobalContext.context.pop();
        points.clear();
        ammount.clear();
        await getTravelRequist();
        await currentTravelRequist();
      },
    );
  }

  void launchMap(String? latitude, String? longitude) async {
    final url = Uri.parse('https://www.google.com/maps/search/?api=1&query=${latitude == '0' ? _currentLat : latitude},${longitude == '0' ? _currentLng : longitude}');
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  // ============================== Profile Function =========================================//

  Future<void> getUserProfile(BuildContext context) async {
    final result = await homeUsecase.getProfile();
    result.fold(
      (failure) {
        erorrDialog(failure.message);
        emit(HomeState.errorProfile(failure.message));
      },
      (result) {
        sl<Box<Driver>>().put(BoxKey.user, result.data!.payload!.driver!);
        if (result.data!.payload?.driver?.workStatus == true) {
          connect();
        } else {
          _disconnect();
        }
      },
    );
  }

  // ============================== Socit IO Function =========================================//

  Future<void> connect() async {
    await _service.startService();

    _channel = WebSocketChannel.connect(Uri.parse(ApiLinks.socitUrl));
    _isManuallyClosed = false;
    _channel?.stream.listen(
      (message) async {
        log('📥 Received: $message');
        final data = jsonDecode(message);
        final eventString = data['event'] as String;
        final event = PusherEventImpl.eventFromString(eventString);
        logger.w(eventString);
        switch (event) {
          case PusherEvent.connectionEstablished:
            final socketData = jsonDecode(data['data']);
            log('✅ Connected with socket_id: ${socketData['socket_id']}');
            await broadcasting(socketData['socket_id']);
            break;
          case PusherEvent.subscriptionSucceeded:
            log('✅ Connected with event : $eventString');
            break;
          case PusherEvent.travelRequest:
            await player.play(AssetSource('sound.wav'));
            final datas = json.decode(data['data']);
            final payload = datas['payload'];
            final cureentState = state;
            if (cureentState is _LoadedTravelRequest) {
              if (cureentState.userModel.isNotEmpty) {
                if (cureentState.userModel.where((travel) => travel.id == payload['id']).isEmpty) {
                  final newList = List<TravelRequest>.from(cureentState.userModel);
                  newList.add(TravelRequest.fromJson(payload));
                  emit(HomeState.loadedTravelRequest(newList));
                }
              } else {
                final newList = List<TravelRequest>.from(cureentState.userModel);
                newList.add(TravelRequest.fromJson(payload));
                emit(HomeState.loadedTravelRequest(newList));
              }
            }
            break;
          case PusherEvent.travelCancel:
            try {
              travelStatus.value = TravelStatus.pending;
              await player.play(AssetSource('sound.wav'));
            } catch (e) {
              log(e.toString());
            }
            await getTravelRequist();
            await currentTravelRequist();
            break;
          default:
            break;
        }
      },
      onDone: () async {
        final user = sl<Box<Driver>>().get(BoxKey.user);
        if (user?.workStatus == true) {
          log('❌ Connection closed');
          if (!_isManuallyClosed) {
            await Future.delayed(const Duration(seconds: 2));
            log('🔁 Trying to reconnect...');
            connect();
          }
        }
      },
      onError: (error) => log('❌ Error: $error'),
    );
  }

  Future<void> _subscribeToPrivateChannel(String auth) async {
    final userData = sl<Box<Driver>>().get(BoxKey.user);
    final subscribeMessage = {
      'event': 'pusher:subscribe',
      'data': {'auth': auth, 'channel': 'private-driver.${userData?.id}'},
    };
    _channel?.sink.add(jsonEncode(subscribeMessage));
    log('📤 Sent subscribe message');
  }

  Future<void> _trackingToPrivateChannel(int travelId) async {
    if (travelId == 0) return;
    try {
      final lat = _currentLat;
      final long = _currentLng;
      final inTrip = _inTrip;
      final accuracy = _currentAccuracy; // 🆕 تأكد إنك بجيب الدقة
      final speed = _currentSpeed; // 🆕 تأكد إنك بجيب السرعة
      if (lat == null || long == null) {
        log('⚠️ Waiting for background location...');
        return;
      }
      final arriveCityName = await getLocationName(lat, long);

      final point = {
        "latitude": lat,
        "longitude": long,
        "arrive_city_name": arriveCityName,
        "accuracy": accuracy,
        "speed": speed,
        "in_trip": inTrip,
        "updatedWhen": DateTime.now().toIso8601String(),
        "timestamp": DateTime.now().millisecondsSinceEpoch,
      };

      log('📍 Sending trip update: ${point['latitude']}, ${point['longitude']} - دقة: ${accuracy?.toStringAsFixed(1)}m');

      final box = sl<Box>(instanceName: BoxKey.appBox);
      final key = 'trip.$travelId';
      final List<dynamic> points = box.get(key, defaultValue: []) as List<dynamic>;

      // 🆕 تطبيق الفلترة قبل الإضافة
      if (points.isNotEmpty) {
        final lastPoint = points.last;
        if (!RouteUtils.isValidPointForRoute(lastPoint, point)) {
          log('🚫 تجاهل نقطة شاذة');
          return;
        }
      }
      points.add(point);
      // 🆕 تجميع النقاط المتقاربة للحفظ
      final filteredPoints = RouteUtils.clusterClosePoints(points.cast<Map<String, dynamic>>());
      await box.put(key, filteredPoints);
      final subscribe = {
        'event': 'pusher:subscribe',
        'data': {'channel': 'trip.$travelId'},
      };
      final subscribeData = {'event': 'client-trip', 'data': jsonEncode(point), 'channel': 'trip.$travelId'};
      _channel?.sink.add(jsonEncode(subscribe));
      _channel?.sink.add(jsonEncode(subscribeData));

      log('📤 Sent Tracking - النقاط المخزنة: ${filteredPoints.length}');
    } catch (e) {
      log('❌ Error in _trackingToPrivateChannel : $e');
    }
  }

  Future<void> broadcasting(String socitId) async {
    final user = sl<Box<Driver>>().get(BoxKey.user);
    final result = await homeUsecase.broadcasting('${user?.id ?? 0}', socitId);
    result.fold((failure) => logger.e(failure.message), (result) {
      brodcast = result.data!;
      _subscribeToPrivateChannel(result.data!);
    });
  }

  Future<void> _disconnect() async => await _channel?.sink.close();
}
