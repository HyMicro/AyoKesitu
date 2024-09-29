import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<ForgotPassController>(builder: (controller) {
      return Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.symmetric(horizontal: 17),
          children: [
            Container(
              height: context.height,
              alignment: Alignment.center,
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'BUAT PASSWORD BARU',
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(fontSize: 18.sp, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 53),
                  child: Text(
                    'Password baru anda harus berbeda dengan password anda sebelumnya',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge!.apply(color: Colors.black),
                  ),
                ),
                RoundTextField(
                  controller: controller.passControl,
                  margin: const EdgeInsets.only(bottom: 18),
                  hintText: 'Password',
                  obscureText: !controller.showPass.value,
                  errorText: controller.errorPass.value,
                  suffix: CustomButton(
                    useConstrain: false,
                    width: 35.w,
                    height: 35.h,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    onTap: () {
                      controller.showPass(!controller.showPass.value);
                      controller.update();
                    },
                    child: controller.showPass.value
                        ? Icon(Icons.visibility_outlined, color: colorScheme.tertiaryContainer)
                        : Icon(Icons.visibility_off_outlined, color: colorScheme.tertiaryContainer),
                  ),
                ),
                RoundTextField(
                  controller: controller.confPassControl,
                  margin: const EdgeInsets.only(bottom: 76),
                  hintText: 'Konfirmasi Password',
                  obscureText: !controller.showConfPass.value,
                  errorText: controller.errorConfPass.value,
                  suffix: CustomButton(
                    useConstrain: false,
                    width: 35.w,
                    height: 35.h,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    onTap: () {
                      controller.showConfPass(!controller.showConfPass.value);
                      controller.update();
                    },
                    child: controller.showConfPass.value
                        ? Icon(Icons.visibility_outlined, color: colorScheme.tertiaryContainer)
                        : Icon(Icons.visibility_off_outlined, color: colorScheme.tertiaryContainer),
                  ),
                ),
                CustomButton(
                  height: 49.h,
                  color: colorScheme.primary,
                  onTap: () => controller.postReset(),
                  child: Text(
                    'Ganti Password',
                    style: textTheme.titleMedium!.apply(color: colorScheme.onPrimary),
                  ),
                ),
              ]),
            ),
          ],
        ),
      );
    });
  }
}
