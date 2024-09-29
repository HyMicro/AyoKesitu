import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/security/security.dart';
import 'package:ayo_kesitu/utils/actions/actions.dart';

// custom getx controller
class Controller extends GetxController {
  @override
  void onInit() {
    setAppURL();
    setupTheme();
    super.onInit();
  }

  // set app url
  final appURL = RxString('');
  setAppURL() {
    if (FlavorAction.flavor == Flavor.develop) {
      appURL(EnvRestapi.URL_DEV);
    } else if (FlavorAction.flavor == Flavor.staging) {
      appURL(EnvRestapi.URL_STAGING);
    } else if (FlavorAction.flavor == Flavor.product) {
      appURL(EnvRestapi.URL_PROD);
    }
  }

  // setup theme
  late ThemeData themeContext;
  late ColorScheme colorScheme;
  late TextTheme textTheme;
  setupTheme() {
    themeContext = Get.theme;
    colorScheme = themeContext.colorScheme;
    textTheme = themeContext.textTheme;
  }
}
