import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

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
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'GANTI PASSWORD',
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(fontSize: 18.sp, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 47),
                  child: Text(
                    'Masukan email yang anda daftarkan dan kami akan mengirim email instruksi pergantian password.',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge!.apply(color: Colors.black),
                  ),
                ),
                RoundTextField(
                  controller: controller.emailControl,
                  margin: const EdgeInsets.only(bottom: 35),
                  hintText: 'Masukan Email',
                  keyboardType: TextInputType.emailAddress,
                  errorText: controller.errorEmail.value,
                ),
                CustomButton(
                  height: 49.h,
                  color: colorScheme.primary,
                  onTap: () => controller.postEmail(),
                  child: Text('Kirim', style: textTheme.titleMedium!.apply(color: colorScheme.onPrimary)),
                ),
              ]),
            ),
          ],
        ),
      );
    });
  }
}
