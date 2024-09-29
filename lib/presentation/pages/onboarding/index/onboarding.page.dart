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
        body: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: const EdgeInsets.symmetric(horizontal: 17),
            children: [
              // Text(
              //   'Onboarding Page',
              //   textAlign: TextAlign.center,
              //   style: textTheme.titleLarge,
              // ),
              const Spacer(),
              const Text(
                "BROMO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "The procurement of Jeeps for the purpose of crossing Mount Bromo "
                "is very important, because the rugged landscape requires durable "
                "vehicles and skilled operators. Furthermore, regulations set by "
                "the Bromo Tengger Semeru National Park further support the use of "
                "Jeeps to facilitate safer and more effective exploration.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your navigation or action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );
    });
  }
}
