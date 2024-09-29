import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/services/services.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class HelpController extends AuthController {
  final launchHelpService = LaunchHelpService();

  // help whatsapp
  helpWhatsapp() async {
    try {
      await launchHelpService.launchWhatsapp(
        launch: LaunchHelpWhatsapp(),
      );
    } catch (error) {
      Get.closeCurrentSnackbar();
      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Whatsapp Error",
          style: textTheme.titleLarge!.apply(color: colorScheme.onError),
        ),
        messageText: Text(
          "Aplikasi belum terinstall",
          style: textTheme.bodyMedium!.apply(color: colorScheme.onError),
        ),
        icon: Icon(
          Icons.error_outline_rounded,
          size: 30.sp,
          color: colorScheme.onError,
        ),
        borderRadius: 8.r,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        animationDuration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        backgroundColor: colorScheme.error,
      ));
    }
  }

  // help whatsapp
  helpMessenger() async {
    try {
      await launchHelpService.launchMessenger(
        launch: LaunchHelpMessenger(),
      );
    } catch (error) {
      Get.closeCurrentSnackbar();
      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Mesengger Error",
          style: textTheme.titleLarge!.apply(color: colorScheme.onError),
        ),
        messageText: Text(
          "Aplikasi belum terinstall",
          style: textTheme.bodyMedium!.apply(color: colorScheme.onError),
        ),
        icon: Icon(
          Icons.error_outline_rounded,
          size: 30.sp,
          color: colorScheme.onError,
        ),
        borderRadius: 8.r,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        animationDuration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        backgroundColor: colorScheme.error,
      ));
    }
  }
}
