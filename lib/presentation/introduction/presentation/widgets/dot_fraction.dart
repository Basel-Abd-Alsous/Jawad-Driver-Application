import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/introductions_bloc.dart';

class DotFractions extends StatelessWidget {
  const DotFractions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroductionsBloc, IntroductionsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => SizedBox.shrink(),
          initial:
              (index) => Center(
                child: SmoothPageIndicator(
                  controller: context.read<IntroductionsBloc>().pageController,
                  count: context.read<IntroductionsBloc>().getIntroductionList(context).length,
                  effect: ExpandingDotsEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                  ),
                ),
              ),
        );
      },
    );
  }
}
