import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'widgets/bottom.tab.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(builder: (controller) {
      return Scaffold(
        body: Stack(children: [
          SizedBox(
            height: context.height,
            width: context.width,
            child: TabBarView(
              controller: controller.tabControl,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                HomePage(),
                ProfilePage(),
              ],
            ),
          ),
          BottomTab(controller: controller),
        ]),
      );
    });
  }
}
