import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/color.dart';
import '../../../../injection_container.dart';
import '../../controller/introductions_bloc.dart';
import 'sliding_onboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: BlocProvider(create: (context) => sl<IntroductionsBloc>()..getBoarding(), child: const SlidingOnboarding()),
    );
  }
}
