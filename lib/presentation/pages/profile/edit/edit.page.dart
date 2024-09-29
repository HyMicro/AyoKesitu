import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';
import 'widgets/topbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<ProfileController>(builder: (controller) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Topbar(backTap: () => Get.back()),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(left: 20, right: 20),
              children: [
                RoundTextField(
                  controller: controller.nikControl,
                  margin: const EdgeInsets.only(top: 52),
                  hintText: 'NIK Kepala Keluarga',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(16)],
                  errorText: controller.errorNIK.value,
                ),
                RoundTextField(
                  controller: controller.kkControl,
                  margin: const EdgeInsets.only(top: 24),
                  hintText: 'Nomor KK',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(16)],
                  errorText: controller.errorKK.value,
                ),
                RoundTextField(
                  controller: controller.fullNameControl,
                  margin: const EdgeInsets.only(top: 24),
                  hintText: 'Nama Lengkap',
                  errorText: controller.errorName.value,
                ),
                RoundTextField(
                  controller: controller.emailControl,
                  margin: const EdgeInsets.only(top: 24),
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  errorText: controller.errorEmail.value,
                ),
                RoundTextField(
                  controller: controller.phoneControl,
                  margin: const EdgeInsets.only(top: 24),
                  hintText: 'No HP/WA',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [LengthLimitingTextInputFormatter(12)],
                  errorText: controller.errorPhone.value,
                ),
              ],
            ),
          ),
          // submit
          CustomButton(
            height: 50.h,
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 35),
            color: colorScheme.primary,
            onTap: () => controller.updateProfile(),
            child: Text(
              'Submit',
              style: textTheme.displayMedium!.apply(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ]),
      );
    });
  }
}
