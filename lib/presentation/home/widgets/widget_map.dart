import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../core/services/hive/box_key.dart';
import '../../../main.dart';
import '../../layout/domain/model/user_model.dart';
import '../../../injection_container.dart';
import '../controller/home_cubit.dart';
import 'widget_driver_unactive.dart';

class WidgetMap extends StatelessWidget {
  const WidgetMap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ValueListenableBuilder<Box<Driver>>(
          valueListenable: sl<Box<Driver>>().listenable(),
          builder: (context, value, child) {
            Driver driver = value.get(BoxKey.user) ?? Driver();
            switch (driver.workStatus) {
              case true:
                return ValueListenableBuilder<LatLng>(
                  valueListenable: context.read<HomeCubit>().initialPosition,
                  builder: (context, value, child) {
                    LatLng initialPosition = value;
                    logger.i(initialPosition);
                    return GoogleMap(
                      onMapCreated: context.read<HomeCubit>().onMapCreated(),
                      initialCameraPosition: CameraPosition(target: value, zoom: 15.0),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: true,
                      circles: context.read<HomeCubit>().circles,
                    );
                  },
                );
              case false:
                return WidgetDriverUnactive();
              default:
                return WidgetDriverUnactive();
            }
          },
        );
      },
    );
  }
}
