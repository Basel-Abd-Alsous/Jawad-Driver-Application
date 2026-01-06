import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection_container.dart';
import '../widgets/home_app_bar.dart';
import '../controller/home_cubit.dart';
import '../widgets/widget_map.dart';
import 'container_travel_requiest.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create:
              (context) =>
                  sl<HomeCubit>()
                    ..getUserLocation()
                    ..getTravelRequist()
                    ..currentTravelRequist()
                    ..getUserProfile(context),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(body: SafeArea(child: Stack(alignment: Alignment.topCenter, children: [WidgetMap(), ContainerTravelRequiest(), HomeAppBar()])));
        },
      ),
    );
  }
}
