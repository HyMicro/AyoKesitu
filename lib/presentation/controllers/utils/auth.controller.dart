import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/security/security.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/utils/actions/actions.dart';

// custom getx controller
class AuthController extends GetxController {
  AuthStorageService authStorage = Get.find();

  @override
  void onInit() async {
    setAppURL();
    setupTheme();
    await getStorProfile();
    super.onInit();
  }

  // get profile
  final profile = Rx<Profile?>(null);
  getStorProfile() async {
    Auth? auth = await authStorage.readBearer();
    User? user = await authStorage.readUser();

    if (auth != null && user != null) {
      profile(Profile(
        nikHeadFamily: user.nik,
        numberKk: user.noKk,
        childFullName: user.nama,
        name: user.nama,
        email: user.email,
        phone: user.noWa,
      ));
      update();
    } else {
      if (Get.currentRoute != Routes.LOGIN) {
        Get.offAllNamed(Routes.LOGIN);
      }
    }
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
