import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';

import 'package:ayo_kesitu/infrastructure/services/restapi/restapi.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

class RegisterController extends Controller {
  final numForms = RxInt(1);

  // one form
  final nikControl = TextEditingController();
  final kkControl = TextEditingController();
  final namaControl = TextEditingController();
  final errorNIK = RxString('');
  final errorKK = RxString('');
  final errorNama = RxString('');

  // second form
  final emailControl = TextEditingController();
  final waControl = TextEditingController();
  final passControl = TextEditingController();
  final confPassControl = TextEditingController();
  final errorEmail = RxString('');
  final errorWa = RxString('');
  final errorPass = RxString('');
  final errorConfPass = RxString('');
  final showPass = RxBool(false);
  final showConfPass = RxBool(false);

  // post register
  final restAuthService = RestAuthService();
  postRegister() async {
    resetErrors();
    Restapi response = await restAuthService.createUser(
      regisReq: RegisterReq(
        nik: nikControl.text,
        noKk: kkControl.text,
        nama: namaControl.text,
        password: passControl.text,
        confirmPassword: confPassControl.text,
        noWa: waControl.text,
        email: emailControl.text,
      ),
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

      numForms(1);
      RegisterErr? registerErr = response.error;

      errorKK(registerErr?.noKk?.join('\n'));
      errorNIK(registerErr?.nik?.join('\n'));
      errorNama(registerErr?.nama?.join('\n'));
      errorEmail(registerErr?.email?.join('\n'));
      errorWa(registerErr?.noWa?.join('\n'));
      errorPass(registerErr?.password?.join('\n'));
      errorConfPass(registerErr?.confPassword?.join('\n'));
      update();
    }
  }

  // reset errors
  resetErrors() {
    errorKK('');
    errorNIK('');
    errorPass('');
    errorConfPass('');
    errorNama('');
    errorWa('');
    update();
  }

  // close page
  @override
  void onClose() {
    nikControl.clear();
    kkControl.clear();
    namaControl.clear();
    emailControl.clear();
    waControl.clear();
    passControl.clear();
    confPassControl.clear();

    super.onClose();
  }
}
