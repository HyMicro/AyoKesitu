import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final textTheme = themeContext.textTheme;

    return GetBuilder<InitController>(builder: (controller) {
      return Scaffold(
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.symmetric(horizontal: 17),
          children: [
            Text(
              'Onboarding Page',
              textAlign: TextAlign.center,
              style: textTheme.titleLarge,
            ),
          ],
        ),
      );
    });
  }
}
