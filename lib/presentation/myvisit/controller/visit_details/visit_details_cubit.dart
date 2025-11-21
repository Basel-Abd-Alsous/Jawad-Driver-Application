// import 'dart:convert';
// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;
// import '../../../../core/constant/api_link.dart';
// import '../../../../core/context/global.dart';
// import '../../../../core/utils/color.dart';
// import '../../../../core/utils/text_style.dart';
// import '../../../../l10n/app_localizations.dart';
// import '../../../../main.dart';
// import '../../domain/model/travel_track_model.dart';
// import '../../domain/model/visit_details_model.dart';
// import '../../domain/usecase/visit_usecase.dart';

// part 'visit_details_state.dart';
// part 'visit_details_cubit.freezed.dart';

// class VisitDetailsCubit extends Cubit<VisitDetailsState> {
//   final VisitUsecase visitUsecase;
//   VisitDetailsCubit({required this.visitUsecase}) : super(VisitDetailsState.initial());

//   LatLng? start;
//   LatLng? end;
//   double? rate;
//   ValueNotifier<Set<Polyline>> polylines = ValueNotifier({});
//   late GoogleMapController mapController;
//   BitmapDescriptor? customMarkerIcon;

//   void onMapCreated(GoogleMapController controller) => mapController = controller;

//   Future<void> _createPolyline(TravelTrackModel? data) async {
//     if (data == null || data.payload == null || data.payload!.isEmpty) return;

//     // Convert to LatLng
//     final List<LatLng> customPoints =
//         data.payload!.map((e) => LatLng(double.tryParse('${e.latitude ?? 0.0}') ?? 0.0, double.tryParse('${e.longitude ?? 0.0}') ?? 0.0)).toList();

//     // Remove duplicates
//     final List<LatLng> uniquePoints = customPoints.fold<List<LatLng>>([], (list, point) {
//       final exists = list.any((p) => p.latitude == point.latitude && p.longitude == point.longitude);
//       if (!exists) list.add(point);
//       return list;
//     });

//     if (uniquePoints.length < 2) return;

//     logger.i('Unique points count: ${uniquePoints.length}');

//     // If points <= 25, just use them in a single request
//     if (uniquePoints.length <= 25) {
//       final origin = uniquePoints.first;
//       final destination = uniquePoints.last;
//       final waypoints = uniquePoints.skip(1).take(uniquePoints.length - 2).map((point) => '${point.latitude},${point.longitude}').join('|');

//       final apiKey = ApiLinks.googleMap;
//       final url =
//           'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey&waypoints=$waypoints';

//       final response = await http.get(Uri.parse(url));
//       final dataJson = json.decode(response.body);

//       final Set<Polyline> allPolylines = {};
//       if (dataJson['routes'] != null && dataJson['routes'].isNotEmpty) {
//         final encoded = dataJson['routes'][0]['overview_polyline']['points'];
//         final List<LatLng> routePoints = _decodePolyline(encoded);

//         allPolylines.add(Polyline(polylineId: PolylineId('road_route'), color: AppColor.black, width: 5, points: routePoints));
//       } else {
//         print('No route found for the trip.');
//       }

//       polylines.value = allPolylines;
//       return;
//     }

//     // Split into chunks (more than 25 points)
//     final List<List<LatLng>> chunks = [];
//     const int chunkSize = 25;
//     for (int i = 0; i < uniquePoints.length; i += chunkSize) {
//       final int end = (i + chunkSize < uniquePoints.length) ? i + chunkSize : uniquePoints.length;
//       chunks.add(uniquePoints.sublist(i, end));
//     }

//     final apiKey = ApiLinks.googleMap;
//     final Set<Polyline> allPolylines = {};

//     for (int i = 0; i < chunks.length; i++) {
//       // Check if there's a next chunk for destination
//       if (i + 1 >= chunks.length) break;

//       final origin = chunks[i].first;
//       final destination = chunks[i + 1].last;

//       final waypoints = chunks[i].skip(1).take(chunks[i].length - 2).map((p) => '${p.latitude},${p.longitude}').join('|');

//       final url =
//           'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey&waypoints=$waypoints';

//       final response = await http.get(Uri.parse(url));
//       final dataJson = json.decode(response.body);

//       if (dataJson['routes'] != null && dataJson['routes'].isNotEmpty) {
//         final encoded = dataJson['routes'][0]['overview_polyline']['points'];
//         final List<LatLng> routePoints = _decodePolyline(encoded);

//         allPolylines.add(Polyline(polylineId: PolylineId('road_route_$i'), color: AppColor.black, width: 5, points: routePoints));
//       } else {
//         print('No route found for chunk $i');
//       }
//     }

//     polylines.value = allPolylines;
//   }

//   List<LatLng> _decodePolyline(String encoded) {
//     List<LatLng> polyline = [];
//     int index = 0, len = encoded.length;
//     int lat = 0, lng = 0;

//     while (index < len) {
//       int b, shift = 0, result = 0;
//       do {
//         b = encoded.codeUnitAt(index++) - 63;
//         result |= (b & 0x1f) << shift;
//         shift += 5;
//       } while (b >= 0x20);
//       int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
//       lat += dlat;

//       shift = 0;
//       result = 0;
//       do {
//         b = encoded.codeUnitAt(index++) - 63;
//         result |= (b & 0x1f) << shift;
//         shift += 5;
//       } while (b >= 0x20);
//       int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
//       lng += dlng;

//       polyline.add(LatLng(lat / 1E5, lng / 1E5));
//     }

//     return polyline;
//   }

//   // Function To Get Visit Details
//   Future<void> getVisitDetails(int id) async {
//     try {
//       emit(_LoadingVisitDetails());
//       final result = await visitUsecase.getVisitDetails(id);
//       result.fold((failure) => emit(_ErrorVisitDetails(failure.message)), (success) async {
//         await getTravelTrack(id);
//         emit(_LoadedVisitDetails(success.data!));
//       });
//     } catch (e) {
//       emit(_ErrorVisitDetails('Server Error In Visit Details Section : $e'));
//       log('Server Error In Visit Details Section : $e');
//     }
//   }

//   Future<void> getTravelTrack(int id) async {
//     try {
//       final result = await visitUsecase.getTravelTrack(id);
//       result.fold((failure) {}, (success) async {
//         polylines.value.clear();
//         start = LatLng(double.parse('${success.data!.payload?.first.latitude ?? 0.0}'), double.parse('${success.data!.payload?.first.longitude ?? 0.0}'));
//         end = LatLng(double.parse('${success.data!.payload?.last.latitude ?? 0.0}'), double.parse('${success.data!.payload?.last.longitude ?? 0.0}'));
//         await _createPolyline(success.data!);
//       });
//     } catch (e) {
//       log('Server Error In Visit Details Section : $e');
//     }
//   }

//   Future<void> addRate(int id) async {
//     SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
//     try {
//       final result = await visitUsecase.addRate(id, rate ?? 0.0);
//       result.fold(
//         (failure) {
//           SmartDialog.dismiss();
//           log('Server Error In Rate Travel Section : ${failure.message}');
//         },
//         (success) async {
//           SmartDialog.dismiss();
//           await getVisitDetails(id);
//         },
//       );
//     } catch (e) {
//       SmartDialog.dismiss();
//       log('Server Error In Visit Details Section : $e');
//     }
//   }

//   void showAddRatingBottomSheet(BuildContext context, int id) {
//     showModalBottomSheet(
//       context: context,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
//       isScrollControlled: true,
//       builder: (context) {
//         return Padding(
//           padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: MediaQuery.of(context).viewInsets.bottom + 20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(AppLocalizations.of(GlobalContext.context)!.addRating, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               SizedBox(height: 20),

//               /// ⭐ Rating Bar
//               RatingBar.builder(
//                 initialRating: 0,
//                 minRating: 1,
//                 direction: Axis.horizontal,
//                 allowHalfRating: true,
//                 itemCount: 5,
//                 itemSize: 36,
//                 itemPadding: EdgeInsets.symmetric(horizontal: 4),
//                 itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
//                 onRatingUpdate: (value) {
//                   rate = value;
//                 },
//               ),
//               SizedBox(height: 20),

//               /// ✅ Submit Button
//               ElevatedButton(
//                 onPressed: () async {
//                   Navigator.pop(context);
//                   await addRate(id);
//                 },
//                 style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
//                 child: Text(AppLocalizations.of(GlobalContext.context)!.submit, style: AppTextStyle.style16B),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constant/api_link.dart';
import '../../../../core/context/global.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../domain/model/travel_track_model.dart';
import '../../domain/model/visit_details_model.dart';
import '../../domain/usecase/visit_usecase.dart';

part 'visit_details_state.dart';
part 'visit_details_cubit.freezed.dart';

class VisitDetailsCubit extends Cubit<VisitDetailsState> {
  final VisitUsecase visitUsecase;
  VisitDetailsCubit({required this.visitUsecase}) : super(VisitDetailsState.initial());

  LatLng? start;
  LatLng? end;
  double? rate;

  late GoogleMapController mapController;

  /// Instead of polylines → we use markers
  ValueNotifier<Set<Marker>> markers = ValueNotifier({});

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  /// Create markers for the whole travel track
  Future<void> _createMarkers(TravelTrackModel? data) async {
    if (data == null || data.payload == null || data.payload!.isEmpty) return;

    final List<LatLng> points =
        data.payload!.map((e) => LatLng(double.tryParse('${e.latitude ?? 0.0}') ?? 0.0, double.tryParse('${e.longitude ?? 0.0}') ?? 0.0)).toList();

    final Set<Marker> newMarkers = {};

    /// Add all travel points as markers
    for (int i = 0; i < points.length; i++) {
      newMarkers.add(Marker(markerId: MarkerId('track_$i'), position: points[i], icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure)));
    }

    /// Save Start + End
    start = points.first;
    end = points.last;

    /// Green start marker
    newMarkers.add(Marker(markerId: const MarkerId('start'), position: start!, icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)));

    /// Red end marker
    newMarkers.add(Marker(markerId: const MarkerId('end'), position: end!, icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)));

    markers.value = newMarkers;
  }

  // ---------------------------
  // Load Visit Details
  // ---------------------------
  Future<void> getVisitDetails(int id) async {
    try {
      emit(_LoadingVisitDetails());
      final result = await visitUsecase.getVisitDetails(id);

      result.fold((failure) => emit(_ErrorVisitDetails(failure.message)), (success) async {
        await getTravelTrack(id);
        emit(_LoadedVisitDetails(success.data!));
      });
    } catch (e) {
      emit(_ErrorVisitDetails('Server Error In Visit Details Section : $e'));
      log('Server Error In Visit Details Section : $e');
    }
  }

  // ---------------------------
  // Load Travel Track
  // ---------------------------
  Future<void> getTravelTrack(int id) async {
    try {
      final result = await visitUsecase.getTravelTrack(id);
      result.fold((failure) {}, (success) async {
        markers.value.clear();
        await _createMarkers(success.data!);
      });
    } catch (e) {
      log('Server Error In Travel Track : $e');
    }
  }

  // ---------------------------
  // Rating API
  // ---------------------------
  Future<void> addRate(int id) async {
    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);

    try {
      final result = await visitUsecase.addRate(id, rate ?? 0.0);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          log('Server Error In Rate Travel Section : ${failure.message}');
        },
        (success) async {
          SmartDialog.dismiss();
          await getVisitDetails(id);
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      log('Server Error In Visit Details Section : $e');
    }
  }
}
