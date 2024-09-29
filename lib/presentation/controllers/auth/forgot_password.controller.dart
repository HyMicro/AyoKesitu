import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/services/launcher/launcher.dart';
import 'package:ayo_kesitu/infrastructure/services/restapi/restapi.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

class ForgotPassController extends Controller {
  final restAuthService = RestAuthService();

  // post email
  final emailControl = TextEditingController();
  final forgotToken = RxString('');
  final errorEmail = RxString('');
  postEmail() async {
    resetErrors();

    Restapi response = await restAuthService.requestForgotPass(
      forgotReq: ForgotPassReq(email: emailControl.text),
    );

    if (response.success) Get.offNamed(Routes.CHECK_EMAIL);
    if (!response.success) {
      if (emailControl.text.isNotEmpty && response.message!.contains(emailControl.text)) {
        Get.offNamed(Routes.CHECK_EMAIL);
      }

      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Forgot Password Error",
          style: textTheme.titleLarge!.apply(color: colorScheme.onError),
        ),
        messageText: Text(
          "${response.message}",
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
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        backgroundColor: colorScheme.error,
      ));

      ForgotPassErr? forgotPassErr = response.error;
      errorEmail(forgotPassErr?.email?.join('\n'));
      update();
    }
  }

  // check email
  final launchAuthService = LaunchAuthService();
  checkEmail() async {
    await launchAuthService.launchEmail();
  }

  // post reset
  AuthStorageService authStorage = Get.find();
  final passControl = TextEditingController();
  final confPassControl = TextEditingController();
  final showPass = RxBool(false);
  final showConfPass = RxBool(false);
  final errorPass = RxString('');
  final errorConfPass = RxString('');
  postReset() async {
    resetErrors();

    ForgotPass? forgotPass = await authStorage.readForgoToken();

    Restapi response = await restAuthService.resetPass(
      resetPassReq: ResetPassReq(
        password: passControl.text,
        confirmPassword: confPassControl.text,
        token: '${forgotPass?.token}',
      ),
    );

    if (response.success) Get.off(() => const SuccessPage());
    if (!response.success) {
      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Reset Password Error",
          style: textTheme.titleLarge!.apply(color: colorScheme.onError),
        ),
        messageText: Text(
          "${response.message}",
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
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        backgroundColor: colorScheme.error,
      ));

      ResetPassErr? resetPassErr = response.error;

      errorPass(resetPassErr?.password?.join('\n'));
      errorConfPass(resetPassErr?.confirmPassword?.join('\n'));
      update();
    }
  }

  // reset errors
  resetErrors() {
    errorEmail('');
    errorPass('');
    errorPass('');
    errorConfPass('');
    update();
  }

  @override
  void onClose() {
    emailControl.clear();
    super.onClose();
  }
}
