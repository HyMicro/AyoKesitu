import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';
import 'widgets/tile.profile.dart';
import 'widgets/topbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<ProfileController>(builder: (controller) {
      return Scaffold(
          body: Column(children: [
        Topbar(backTap: () {
          controller.rootControl.tabControl.index = controller.rootControl.tabControl.previousIndex;
          controller.rootControl.update();
        }),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => controller.getProfile(),
            child: ListView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(top: 33, bottom: 120),
              children: [
                // data diri
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Data Diri', style: textTheme.displayMedium),
                ),
                TileProfile(
                  title: 'NIK Kepala Keluarga',
                  data: controller.profile.value?.nikHeadFamily,
                ),
                TileProfile(
                  title: 'Nomor KK',
                  data: controller.profile.value?.numberKk,
                ),
                TileProfile(
                  title: 'Nama Lengkap',
                  data: controller.profile.value?.childFullName,
                ),

                // data akun
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Data Akun', style: textTheme.displayMedium),
                ),
                TileProfile(
                  title: 'Nama',
                  data: controller.profile.value?.name,
                ),
                TileProfile(
                  title: 'Email',
                  data: controller.profile.value?.email,
                ),
                TileProfile(
                  title: 'No HP/WA',
                  data: controller.profile.value?.phone,
                ),

                // edit profile
                CustomButton(
                  margin: const EdgeInsets.only(top: 56, left: 20, right: 20),
                  height: 49.h,
                  border: Border.all(color: colorScheme.primary),
                  onTap: () => Get.to(const EditProfilePage()),
                  child: Text(
                    'Edit Profile',
                    style: textTheme.titleMedium!.apply(color: colorScheme.primary),
                  ),
                ),

                // logout
                CustomButton(
                  margin: const EdgeInsets.only(top: 18, left: 20, right: 20),
                  height: 49.h,
                  border: Border.all(color: colorScheme.error),
                  onTap: () => GetxDialog.custom(children: [
                    CustomButton(
                      color: themeContext.dialogBackgroundColor,
                      width: context.width,
                      padding: const EdgeInsets.symmetric(vertical: 49, horizontal: 22),
                      child: Column(children: [
                        Container(
                          width: 133.w,
                          height: 133,
                          margin: const EdgeInsets.only(bottom: 27),
                          child: Image.asset(ConstUtilsImage.confirmDialog),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Keluar',
                            textAlign: TextAlign.center,
                            style: textTheme.titleLarge!.copyWith(color: Colors.black, fontSize: 18.sp),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: Text(
                            'Apakah anda yakin ingin keluar aplikasi ?',
                            textAlign: TextAlign.center,
                            style: textTheme.bodyMedium,
                          ),
                        ),
                        CustomButton(
                          margin: const EdgeInsets.only(bottom: 15),
                          height: 49.h,
                          border: Border.all(color: colorScheme.primary),
                          onTap: () => Get.back(),
                          child: Text(
                            'Batal',
                            style: textTheme.titleMedium!.apply(color: colorScheme.primary),
                          ),
                        ),
                        CustomButton(
                          height: 49.h,
                          color: colorScheme.error,
                          onTap: () => controller.getLogout(),
                          child: Text(
                            'Keluar',
                            style: textTheme.titleMedium!.apply(color: colorScheme.onError),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                  child: Text(
                    'Logout',
                    style: textTheme.titleMedium!.apply(color: colorScheme.error),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]));
    });
  }
}
