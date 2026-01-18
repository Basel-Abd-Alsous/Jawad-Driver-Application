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
import 'package:hive/hive.dart';
import 'package:location/location.dart' hide LocationAccuracy;
import 'package:permission_handler/permission_handler.dart';
import 'package:sliding_action_button/sliding_action_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:audioplayers/audioplayers.dart';

import ' route_utils.dart';
import '../../../core/constant/api_link.dart';
import '../../../core/context/global.dart';
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
  ValueNotifier<TravelRequest?> currentTravel = ValueNotifier(TravelRequest());
  ValueNotifier<String> remainingAmount = ValueNotifier('');
  ValueNotifier<TravelStatus?> travelStatus = ValueNotifier(TravelStatus.pending);
  AudioPlayer player = AudioPlayer();
  Set<String> points = <String>{};
  final distance = 0.0;
  final SlideToActionController circleSlideToActionController = SlideToActionController();
  final key = GlobalKey<FormState>();
  TextEditingController ammount = TextEditingController();

  HomeCubit({required this.homeUsecase, required this.workStatusUsecase}) : super(HomeState.initial()) {
    getUserLocation();
    Future.delayed(Duration(seconds: 2), () async {
      await havePermissionMap();
      await _checkRunning();
      await initBackgroundLocationListener();

      final user = sl<Box<Driver>>().get(BoxKey.user);
      if (user?.workStatus == true && !running.value) {
        logger.i('🚀 بدء الخدمة تلقائياً - السائق في وضع العمل');
        await startBackgroundService();
      }
    });
  }

  double? _currentLat;
  double? _currentLng;
  double? _currentAccuracy;
  double? _currentSpeed;
  bool _inTrip = false;
  ValueNotifier<bool> running = ValueNotifier(false);
  final FlutterBackgroundService _service = FlutterBackgroundService();

  Future<void> _checkRunning() async {
    bool isRunning = await _service.isRunning();
    running.value = isRunning;
  }

  // ============================== Init Google Map Functions ============================== //

  String? mapStyleString;
  GoogleMapController? mapController;
  final Location location = Location();
  ValueNotifier<LatLng> initialPosition = ValueNotifier(LatLng(24.7136, 46.6753));
  Set<Circle> circles = {};

  Future<void> getUserLocation() async {
    try {
      emit(HomeState.loadingMap());
      LocationHelper().getCurrentLocation().then((locationData) async {
        initialPosition.value = LatLng(locationData?.latitude ?? 0.0, locationData?.longitude ?? 0.0);
        circles.addAll([
          Circle(circleId: CircleId('user_circle'), center: initialPosition.value, radius: 200, fillColor: Colors.black87.withOpacity(0.3), strokeColor: Colors.black87, strokeWidth: 2),
        ]);
        mapController?.animateCamera(CameraUpdate.newLatLngZoom(initialPosition.value, 15));
      });

      emit(HomeState.loadedMap());
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

  /// 🔍 فحص حالة الخدمة
  Future<void> checkServiceStatus() async {
    try {
      bool isRunning = await _service.isRunning();
      logger.i('''
🛠️ حالة الخدمة:
✅ الخدمة تعمل: $isRunning
📡 الـ WebSocket: ${_channel != null ? "متصل" : "غير متصل"}
🚗 وضع الرحلة: ${DynamicConfig.isInTrip ? "مفعل" : "غير مفعل"}
👤 حالة العمل: ${sl<Box<Driver>>().get(BoxKey.user)?.workStatus == true ? "يعمل" : "متوقف"}
''');

      if (!isRunning) {
        logger.i('🔄 الخدمة متوقفة، جاري إعادة التشغيل...');
        await startBackgroundService();
      }
    } catch (e) {
      logger.e('❌ خطأ في فحص حالة الخدمة: $e');
    }
  }

  /// 📍 إرسال موقع تجريبي يدوي
  Future<void> sendTestLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);

      await sendLocation(position.latitude.toString(), position.longitude.toString());
      logger.i('🧪 إرسال موقع تجريبي: ${position.latitude}, ${position.longitude}');
    } catch (e) {
      logger.e('❌ فشل الإرسال التجريبي: $e');
    }
  }

  /// 🚀 بدء خدمة الخلفية
  Future<void> startBackgroundService() async {
    try {
      await _service.configure(
        androidConfiguration: AndroidConfiguration(
          onStart: backgroundEntryPoint,
          autoStart: true,
          isForegroundMode: true,
          notificationChannelId: "foreground_channel",
          initialNotificationTitle: 'Driver Service Active',
          initialNotificationContent: 'Running in background',
        ),
        iosConfiguration: IosConfiguration(),
      );
      await _service.startService();
      running.value = true;
      logger.i('🎉 تم بدء خدمة الخلفية بنجاح');
    } catch (e) {
      logger.e('❌ فشل بدء خدمة الخلفية: $e');
    }
  }

  /// 🛑 إيقاف خدمة الخلفية
  Future<void> stopBackgroundService() async {
    try {
      _service.invoke('stopService');
      running.value = false;
      logger.i('🛑 تم إيقاف خدمة الخلفية');
    } catch (e) {
      logger.e('❌ فشل إيقاف خدمة الخلفية: $e');
    }
  }

  /// 🔄 تبديل وضع الرحلة
  Future<void> toggleTripMode(bool inTrip) async {
    try {
      _service.invoke('setTripMode', {'inTrip': inTrip});
      logger.i('🔄 تم تبديل الوضع إلى: ${inTrip ? "رحلة 🚗" : "عادي 🏠"}');
    } catch (e) {
      logger.e('❌ فشل تبديل وضع الرحلة: $e');
    }
  }

  /// 📊 الحصول على إحصائيات الخدمة
  Future<void> getServiceStatistics() async {
    try {
      _service.invoke('getStatistics');
    } catch (e) {
      logger.e('❌ فشل الحصول على الإحصائيات: $e');
    }
  }

  Future<void> initBackgroundLocationListener() async {
    // 🔄 الاستماع لتحديثات الموقع من الخدمة
    _service.on('updateLocation').listen((event) async {
      if (event == null) return;

      final lat = (event['latitude'] as num?)?.toDouble();
      final lng = (event['longitude'] as num?)?.toDouble();
      final acc = (event['accuracy'] as num?)?.toDouble();
      final speed = (event['speed'] as num?)?.toDouble();
      final inTrip = event['in_trip'] as bool?;
      final reason = event['reason'] as String?;

      if (lat == null || lng == null) return;

      logger.i('''
🎯 استلام موقع من الخدمة:
📍 الموقع: $lat, $lng
🎯 الدقة: $acc م - السرعة: ${speed != null ? (speed * 3.6).toStringAsFixed(1) : 'N/A'} كم/س
🚗 الوضع: ${inTrip == true ? "رحلة" : "عادي"}
📝 السبب: $reason
⏰ الوقت: ${DateTime.now()}
''');

      _currentLat = lat;
      _currentLng = lng;
      _currentAccuracy = acc;
      _currentSpeed = speed;
      _inTrip = inTrip ?? false;
      _currentSpeed = speed;
      initialPosition.value = LatLng(_currentLat ?? 0.0, _currentLng ?? 0.0);
      // إرسال الموقع إلى السيرفر
      await sendLocation(lat.toString(), lng.toString());
      // تتبع الرحلة الحالية
      if (currentTravel.value?.id != null) {
        await _trackingToPrivateChannel(currentTravel.value!.id!);
      }
    });

    // 📊 مراقبة حالة الخدمة
    _service.on('serviceStatus').listen((event) {
      logger.i('📊 حالة الخدمة: $event');
    });
  }

  // ============================== Permission Functions ============================== //

  Future<void> havePermissionMap() async {
    bool? havePermission = await requestLocationPermission();
    if (havePermission == true) {
    } else {
      await requestLocationPermission();
    }
  }

  Future<bool> requestLocationPermission() async {
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

  // ============================== Work Status Functions ============================== //

  Future<void> switchWorkStatus(BuildContext context) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await workStatusUsecase();
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: failure.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
          emit(HomeState.errorWorkStatus(failure.message));
        },
        (data) async {
          SmartDialog.dismiss();
          sl<Box<Driver>>().put(BoxKey.user, data.data!.payload!.driver!);
          final user = sl<Box<Driver>>().get(BoxKey.user);

          if (user?.workStatus == true) {
            // ✅ تفعيل خدمة الخلفية عند بدء العمل
            await startBackgroundService();
            connect(context);
          } else {
            // ❌ إيقاف خدمة الخلفية عند إنهاء العمل
            await stopBackgroundService();
            _disconnect();
          }
        },
      );
    } catch (e) {
      logger.e('Error in Switch Work Status : $e');
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
    emit(HomeState.loadingTravelRequest());
    final result = await homeUsecase.travelRequist();
    result.fold((failure) => emit(HomeState.errorTravelRequest(failure.message)), (result) {
      emit(HomeState.loadedTravelRequest(result.data!));
    });
  }

  Future<void> currentTravelRequist() async {
    final result = await homeUsecase.currentTravelRequist();
    result.fold(
      (l) {
        SmartDialog.dismiss();
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
      },
      (r) {
        currentTravel.value = r.data;
        if (currentTravel.value != null) {
          travelStatus.value = _selectedTravelStatus(r.data?.status?.value ?? '');
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
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
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
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
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
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
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
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: l.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
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
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
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

  double _calculateTotalDistance(List<Map<String, dynamic>> points) {
    double totalDistance = 0.0;

    for (int i = 1; i < points.length; i++) {
      double lat1 = points[i - 1]['latitude'];
      double lng1 = points[i - 1]['longitude'];
      double lat2 = points[i]['latitude'];
      double lng2 = points[i]['longitude'];

      double segment = Geolocator.distanceBetween(lat1, lng1, lat2, lng2);
      totalDistance += segment;
    }

    return totalDistance;
  }

  Future<void> endTravel() async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      List<Map<dynamic, dynamic>> rawPoints = _getAllTripLocations(currentTravel.value?.id ?? 0);
      Position pos = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
      final arrivedLocation = await _getAddressFromLatLng(pos.latitude, pos.longitude);

      rawPoints.add({"latitude": pos.latitude, "longitude": pos.longitude, "updatedWhen": DateTime.now().toIso8601String()});
      double? totalDistance = _calculateTotalDistance(rawPoints);
      log(totalDistance.toString());

      final result = await homeUsecase.endTravelRequist(currentTravel.value?.id ?? 0, arrivedLocation, rawPoints);
      result.fold(
        (l) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: l.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
        (r) async {
          // ❌ إيقاف وضع الرحلة بعد انتهاء الرحلة
          await toggleTripMode(false);
          remainingAmount.value = r.data!;
          if (remainingAmount.value != '' && remainingAmount.value != '0' && remainingAmount.value != '0.0') {
            travelStatus.value = TravelStatus.completed;
            points.clear();
            SmartDialog.dismiss();
          } else {
            travelStatus.value = TravelStatus.pending;
            currentTravel.value = null;
            points.clear();
            ammount.clear();
            await getTravelRequist();
            GlobalContext.context.pop();
            SmartDialog.dismiss();
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

  List<Map<String, dynamic>> _getAllTripLocations(int travelId) {
    final box = sl<Box>(instanceName: BoxKey.appBox);
    final key = 'trip.$travelId';

    final List<dynamic> data = box.get(key, defaultValue: []) as List<dynamic>;

    log(data.toString());
    // Ensure it is returned as List<Map<String, dynamic>>
    return data.cast<Map<String, dynamic>>();
  }

  Future<void> payRemaningTravel(String? totalsss) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    final result = await homeUsecase.payTravelRequist(currentTravel.value?.id ?? 0, totalsss != null && totalsss != '' ? totalsss : ammount.text);
    result.fold(
      (l) {
        SmartDialog.dismiss();
        SmartDialog.show(
          builder: (context) => WidgetDilog(
            isError: true,
            title: AppLocalizations.of(GlobalContext.context)!.warning,
            message: l.message,
            cancelText: AppLocalizations.of(GlobalContext.context)!.back,
            onCancel: () => SmartDialog.dismiss(),
          ),
        );
      },
      (r) async {
        travelStatus.value = TravelStatus.pending;
        currentTravel.value = TravelRequest();
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
    result.fold((failure) => emit(HomeState.errorProfile(failure.message)), (result) {
      sl<Box<Driver>>().put(BoxKey.user, result.data!.payload!.driver!);
      if (result.data!.payload?.driver?.workStatus == true) {
        connect(context);
      } else {
        _disconnect();
      }
    });
  }

  // ============================== Socit IO Function =========================================//

  Future<void> connect(BuildContext context) async {
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
        log('❌ Connection closed');
        if (!_isManuallyClosed) {
          await Future.delayed(const Duration(seconds: 2));
          log('🔁 Trying to reconnect...');
          connect(context);
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

  _disconnect() {
    _channel?.sink.close();
  }

  @override
  Future<void> close() async {
    // إيقاف خدمة الخلفية عند إغلاق الكيوبت
    await stopBackgroundService();
    _disconnect();
    await super.close();
  }
}
