import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

 import '../../../../core/router/router_key.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/cubits/token_cubit/token_cubit.dart';
import '../../../../injection_container.dart';
import '../controller/splash_bloc.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SplashBloc>()..add(const SplashEvent.started()),
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: BlocConsumer<SplashBloc, SplashState>(
          listener:
              (context, state) =>
                  state.mapOrNull(finish: (value) => context.read<TokenCubit>().state != null ? context.go(AppRoutes.home) : context.go(value.route)),
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              player: (controller) {
                return Center(child: AspectRatio(aspectRatio: controller.value.aspectRatio, child: VideoPlayer(controller)));
              },
              orElse: () => const Center(child: Text('Loading')),
            );
          },
        ),
      ),
    );
  }
}
