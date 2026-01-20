import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/function/show_snackbar.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/loading/widget_loading.dart';
import '../controller/visit_details/visit_details_cubit.dart';
import '../domain/model/visit_details_model.dart';

class ContainerMapVisitDetails extends StatelessWidget {
  final VisitDetailsModel? data;
  final bool? isLoading;
  const ContainerMapVisitDetails({super.key, this.isLoading = false, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isLoading == true ? const WidgetLoading(width: 80) : Text(formatDate(data?.payload?.arrivalTime ?? ''), style: AppTextStyle.style18.copyWith(color: AppColor.grey)),
          5.gap,
          Row(
            spacing: 10,
            children: [
              SvgPicture.asset(Assets.svgSar, width: 17, height: 17, color: isLoading == false ? null : AppColor.grey.withOpacity(0.4)),
              isLoading == true ? const WidgetLoading(width: 30) : Text('${data?.payload?.amount ?? '0.0'}', style: AppTextStyle.style20B.copyWith(color: AppColor.black)),
            ],
          ),
          10.gap,
          InkWell(
            onTap: isLoading == true
                ? null
                : () async {
                    final url =
                        'https://www.google.com/maps/dir/?api=1'
                        '&origin=${data?.payload?.pickupLat ?? '31.9454'},${data?.payload?.pickupLng ?? '35.9284'}'
                        '&destination=${data?.payload?.arriveLat ?? '32.5568'},${data?.payload?.arriveLng ?? '35.8469'}';

                    await launch(url);
                  },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.grey.withOpacity(0.4), width: 1),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: isLoading == true
                        ? WidgetLoading(width: double.infinity, height: MediaQuery.of(context).size.height * 0.5)
                        : Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              ValueListenableBuilder<Set<Polyline>>(
                                valueListenable: context.read<VisitDetailsCubit>().polylines,
                                builder: (context, value, child) => GoogleMap(
                                  onMapCreated: context.read<VisitDetailsCubit>().onMapCreated,
                                  initialCameraPosition: CameraPosition(target: context.read<VisitDetailsCubit>().start!, zoom: 11),
                                  polylines: value,
                                  markers: {
                                    Marker(markerId: const MarkerId('start'), position: context.read<VisitDetailsCubit>().start!),
                                    Marker(markerId: const MarkerId('end'), position: context.read<VisitDetailsCubit>().end!),
                                  },
                                  myLocationEnabled: false,
                                  myLocationButtonEnabled: false,
                                  zoomControlsEnabled: false,
                                ),
                              ),
                              InkWell(
                                onTap: isLoading == true
                                    ? null
                                    : () async {
                                        const url =
                                            'https://www.google.com/maps/dir/?api=1'
                                            '&origin=31.9454,35.9284'
                                            '&destination=32.5568,35.8469';

                                        await launch(url);
                                      },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  color: AppColor.secondColor,
                                  child: Text('View in Google Maps', style: AppTextStyle.style14.copyWith(color: AppColor.white)),
                                ),
                              ),
                            ],
                          ),
                  ),
                  Divider(height: 1, color: AppColor.grey.withOpacity(0.4)),
                  10.gap,
                  LocationListItem(isLoading: isLoading, title: data?.payload?.pickupLocation ?? '', subtitle: 'Pickup Location', dotColor: AppColor.secondColor, onTap: () {}),
                  LocationListItem(isLoading: isLoading, title: data?.payload?.arriveLocation ?? '', subtitle: 'Dropoff Location', dotColor: AppColor.black, onTap: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color dotColor;
  final VoidCallback? onTap;
  final bool? isLoading;

  const LocationListItem({super.key, required this.title, required this.subtitle, required this.dotColor, this.onTap, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: isLoading == true
                ? const WidgetLoading(width: 20)
                : Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import '../../../core/widget/loading/widget_loading.dart';
// import '../controller/visit_details/visit_details_cubit.dart';

// class ContainerAbbBarDetails extends StatelessWidget {
//   final bool? isLoading;
//   const ContainerAbbBarDetails({super.key, this.isLoading = false});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: MediaQuery.of(context).size.height * 0.5,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         background:
//             isLoading == true
//                 ? WidgetLoading(width: double.infinity, height: MediaQuery.of(context).size.height * 0.5)
//                 : ValueListenableBuilder(
//                   valueListenable: context.read<VisitDetailsCubit>().markers,
//                   builder:
//                       (context, value, child) => GoogleMap(
//                         onMapCreated: context.read<VisitDetailsCubit>().onMapCreated,
//                         initialCameraPosition: CameraPosition(target: context.read<VisitDetailsCubit>().start!, zoom: 12),
//                         markers: value,
//                         myLocationEnabled: true,
//                         myLocationButtonEnabled: false,
//                         zoomControlsEnabled: true,
//                       ),
//                 ),
//       ),
//     );
//   }
// }
