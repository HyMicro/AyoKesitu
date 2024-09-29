import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.symmetric(horizontal: 17),
          children: [
            // title
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Text(
                'MASUK',
                textAlign: TextAlign.center,
                style: textTheme.displayMedium,
              ),
            ),

            // no kk
            RoundTextField(
              controller: controller.kkControl,
              margin: const EdgeInsets.only(top: 46),
              hintText: 'No KK',
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(16)],
              errorText: controller.errorKK.value,
            ),

            // password
            RoundTextField(
              controller: controller.passControl,
              margin: const EdgeInsets.only(top: 21),
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
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
            ),

            // stay in
            CheckboxButton(
              value: controller.stayIn.value,
              margin: const EdgeInsets.only(top: 21),
              boxTap: (value) {
                controller.stayIn(value);
                controller.update();
              },
              suffixes: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  alignment: Alignment.centerLeft,
                  child: Text('Biarkan tetap masuk', style: textTheme.bodyMedium),
                ),
              ],
            ),

            // submit
            CustomButton(
              height: 50.h,
              margin: const EdgeInsets.only(top: 42),
              color: colorScheme.primary,
              onTap: () => controller.getLogin(),
              child: Text(
                'Masuk',
                style: textTheme.displayMedium!.apply(
                  color: colorScheme.onPrimary,
                ),
              ),
            ),

            // register
            Container(
              margin: const EdgeInsets.only(top: 37),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Text(
                    'Belum punya akun?',
                    style: textTheme.bodyLarge,
                  ),
                ),
                CustomButton(
                  borderRadius: BorderRadius.zero,
                  onTap: () => Get.toNamed(Routes.REGISTER),
                  child: Text(
                    'Daftar Disini',
                    style: textTheme.titleLarge!.apply(
                      color: colorScheme.error,
                    ),
                  ),
                ),
              ]),
            ),

            // forgot
            CustomButton(
              useConstrain: false,
              margin: const EdgeInsets.only(top: 100),
              borderRadius: BorderRadius.zero,
              onTap: () => Get.toNamed(Routes.FORGOT),
              child: Text(
                'Lupa Password',
                style: textTheme.titleLarge!,
              ),
            ),
          ],
        ),
      );
    });
  }
}
