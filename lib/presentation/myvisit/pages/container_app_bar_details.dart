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
//                   valueListenable: context.read<VisitDetailsCubit>().polylines,
//                   builder:
//                       (context, value, child) => GoogleMap(
//                         onMapCreated: context.read<VisitDetailsCubit>().onMapCreated,
//                         initialCameraPosition: CameraPosition(target: context.read<VisitDetailsCubit>().start!, zoom: 12),
//                         polylines: value,
//                         markers: {
//                           Marker(markerId: const MarkerId('start'), position: context.read<VisitDetailsCubit>().start!),
//                           Marker(markerId: const MarkerId('end'), position: context.read<VisitDetailsCubit>().end!),
//                         },
//                         myLocationEnabled: true,
//                         myLocationButtonEnabled: false,
//                         zoomControlsEnabled: true,
//                       ),
//                 ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/widget/loading/widget_loading.dart';
import '../controller/visit_details/visit_details_cubit.dart';

class ContainerAbbBarDetails extends StatelessWidget {
  final bool? isLoading;
  const ContainerAbbBarDetails({super.key, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.5,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background:
            isLoading == true
                ? WidgetLoading(width: double.infinity, height: MediaQuery.of(context).size.height * 0.5)
                : ValueListenableBuilder(
                  valueListenable: context.read<VisitDetailsCubit>().markers,
                  builder:
                      (context, value, child) => GoogleMap(
                        onMapCreated: context.read<VisitDetailsCubit>().onMapCreated,
                        initialCameraPosition: CameraPosition(target: context.read<VisitDetailsCubit>().start!, zoom: 12),
                        markers: value,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: true,
                      ),
                ),
      ),
    );
  }
}
