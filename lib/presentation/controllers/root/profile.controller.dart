import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';

import 'package:ayo_kesitu/infrastructure/services/services.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

class ProfileController extends AuthController {
  RootController rootControl = Get.find();
  final restAuthService = RestAuthService();

  @override
  void onInit() async {
    await getStorProfile();
    await setControl();
    super.onInit();
  }

  // set control
  final nikControl = TextEditingController();
  final kkControl = TextEditingController();
  final fullNameControl = TextEditingController();
  final emailControl = TextEditingController();
  final phoneControl = TextEditingController();
  final errorName = RxString('');
  final errorKK = RxString('');
  final errorNIK = RxString('');
  final errorEmail = RxString('');
  final errorPhone = RxString('');
  setControl() async {
    nikControl.value = TextEditingValue(text: "${profile.value?.nikHeadFamily}");
    kkControl.value = TextEditingValue(text: "${profile.value?.numberKk}");
    fullNameControl.value = TextEditingValue(text: "${profile.value?.name}");
    emailControl.value = TextEditingValue(text: "${profile.value?.email}");
    phoneControl.value = TextEditingValue(text: "${profile.value?.phone}");

    update();
  }

  // get profile
  getProfile() async {
    Restapi response = await restAuthService.profileUser();
    if (response.success) {
      User user = response.data;
      profile(Profile(
        nikHeadFamily: user.nik,
        numberKk: user.noKk,
        childFullName: user.nama,
        name: user.nama,
        email: user.email,
        phone: user.noWa,
      ));
      update();
    }
  }

  // update profile
  updateProfile() async {
    resetErrors();

    Restapi response = await restAuthService.updateProfile(
      userReq: UserUpdateReq(),
    );

    if (response.success) Get.offAllNamed(Routes.ROOT);
    if (!response.success) {
      Get.showSnackbar(GetSnackBar(
        titleText: Text(
          "Update User Error",
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

      UserUpdateErr? userErr = response.error;

      errorName(userErr?.name?.join('\n'));
      errorKK(userErr?.noKk?.join('\n'));
      errorNIK(userErr?.nik?.join('\n'));
      errorEmail(userErr?.email?.join('\n'));
      errorPhone(userErr?.phone?.join('\n'));
      update();
    }
  }

  // get logout
  getLogout() async {
    bool unauthed = await restAuthService.unauthUser();
    if (unauthed) {
      Get.offAllNamed(Routes.LOGIN);
      Get.delete<HomeController>(force: true);
      Get.delete<RootController>(force: true);
      Get.delete<ProfileController>(force: true);
    }
  }

  // reset errors
  resetErrors() {
    // set control
    errorName('');
    errorKK('');
    errorNIK('');
    errorEmail('');
    errorPhone('');

    update();
  }

  @override
  void onClose() {
    nikControl.clear();
    kkControl.clear();
    nikControl.clear();
    fullNameControl.clear();
    emailControl.clear();
    phoneControl.clear();

    super.onClose();
  }
}
