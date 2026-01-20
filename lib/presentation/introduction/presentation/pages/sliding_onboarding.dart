import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/cubits/token_cubit/token_cubit.dart';
import '../../controller/introductions_bloc.dart';
import '../widgets/dot_fraction.dart';
import '../widgets/next_button.dart';
import 'container_onboarding.dart';
import '../../../../l10n/app_localizations.dart';

class SlidingOnboarding extends StatelessWidget {
  const SlidingOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocListener<IntroductionsBloc, IntroductionsState>(
      listener: (context, state) {
        state.maybeWhen(orElse: () => null, complete: () => context.read<TokenCubit>().state != null ? context.go(AppRoutes.home) : context.go(AppRoutes.login));
      },
      child: Stack(
        children: [
          Column(
            children: [
              ValueListenableBuilder(
                valueListenable: context.read<IntroductionsBloc>().introductionList,
                builder: (context, value, child) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    controller: context.read<IntroductionsBloc>().pageController,
                    children: [...value.map((e) => ContainerOnBoarding(title: e.title, desc: e.description, image: e.imageUrl))],
                  ),
                ),
              ),
            ],
          ),
          const Positioned(bottom: 40, left: 0, right: 0, child: NextButton()),
          const Positioned(top: 60, left: 0, right: 0, child: DotFractions()),
          PositionedDirectional(
            end: 10,
            top: 10,
            child: InkWell(
              onTap: () => context.read<IntroductionsBloc>().add(const IntroductionsEvent.skipEvent()),
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10000)),
                child: Text(local.skip, style: AppTextStyle.style14B.copyWith(color: AppColor.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
