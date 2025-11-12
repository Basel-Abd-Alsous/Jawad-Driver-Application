import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/onboarding_page.dart';

class ContainerOnBoarding extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  const ContainerOnBoarding({super.key, required this.title, required this.desc, required this.image});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(imageName: image, title: title, description: desc);
  }
}
