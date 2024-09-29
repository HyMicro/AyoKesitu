import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class RootController extends AuthController with GetSingleTickerProviderStateMixin {
  late TabController tabControl;

  @override
  void onInit() async {
    await setupTab();
    super.onInit();
  }

  setupTab() async {
    try {
      int tabIndex = Get.arguments['tabIndex'];
      tabControl = TabController(length: 3, vsync: this, initialIndex: tabIndex);
    } catch (e) {
      tabControl = TabController(length: 3, vsync: this, initialIndex: 0);
    }
  }
}
