import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/services/restapi/restapi.dart';
import 'package:ayo_kesitu/infrastructure/services/notifies/notifies.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';
import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:permission_handler/permission_handler.dart';

class InitController extends Controller {
  AuthStorageService authStorage = Get.find();
  // NotifLocalService notifLocal = Get.find();

  @override
  void onReady() async {
    await setupPermission();
    // await getAuth();
    super.onReady();
  }

  // get user auth
  // final restAuthService = RestAuthService();
  // getAuth() async {
  //   Auth? auth = await authStorage.readBearer();
  //   User? user = await authStorage.readUser();
  //   if (auth != null && user != null) {
  //     bool checkAuth = await restAuthService.checkAuth();
  //     if (checkAuth) Get.offAllNamed(Routes.ROOT);
  //     if (!checkAuth) {
  //       Get.showSnackbar(GetSnackBar(
  //         titleText: Text(
  //           "Autentikasi Error",
  //           style: textTheme.titleLarge!.apply(color: colorScheme.onError),
  //         ),
  //         messageText: Text(
  //           "Session Sudah Kadaluarsa",
  //           style: textTheme.bodyMedium!.apply(color: colorScheme.onError),
  //         ),
  //         icon: Icon(
  //           Icons.error_outline_rounded,
  //           size: 30.sp,
  //           color: colorScheme.onError,
  //         ),
  //         borderRadius: 8.r,
  //         snackPosition: SnackPosition.TOP,
  //         duration: const Duration(seconds: 2),
  //         margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
  //         backgroundColor: colorScheme.error,
  //       ));

  //       Get.offAllNamed(Routes.LOGIN);
  //     }
  //   } else {
  //     Get.offAllNamed(Routes.LOGIN);
  //   }
  //   update();
  // }

  // setup permissions
  final permNotif = Permission.notification;
  final permMedia = Permission.mediaLibrary;
  final permAlarm = Permission.scheduleExactAlarm;
  final permStore = Permission.storage;
  setupPermission() async {
    if (Platform.isAndroid) {
      // notification
      await permNotif.request();
      await permAlarm.request();
      // media
      await permMedia.request();
      // storage
      await permStore.request();
    }
  }
}
