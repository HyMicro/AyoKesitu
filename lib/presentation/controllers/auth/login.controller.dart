import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';

import 'package:ayo_kesitu/infrastructure/services/services.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

class LoginController extends Controller {
  final showPass = RxBool(false);
  final stayIn = RxBool(false);

  // validate form
  final kkControl = TextEditingController(text: '');
  final passControl = TextEditingController(text: '');
  final errorKK = RxString('');
  final errorPass = RxString('');

  // get login
  final restAuthService = RestAuthService();
  getLogin() async {
    resetErrors();

    Restapi response = await restAuthService.authUser(
      loginReq: LoginReq(noKK: kkControl.text, password: passControl.text),
    );

    if (response.success) Get.offAllNamed(Routes.ROOT);
    if (!response.success) {
      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Autentikasi Error",
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

      LoginErr? loginErr = response.error;
      errorKK(loginErr?.noKk?.join('\n'));
      errorPass(loginErr?.password?.join('\n'));
      update();
    }
  }

  // reset errors
  resetErrors() {
    errorKK('');
    errorPass('');
    update();
  }

  // close page
  @override
  void onClose() {
    kkControl.clear();
    passControl.clear();

    super.onClose();
  }
}
