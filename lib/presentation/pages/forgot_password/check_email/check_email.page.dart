import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

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
                  margin: const EdgeInsets.only(bottom: 25),
                  height: 38.h,
                  child: SvgPicture.asset(ConstForgotPassSvg.email),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'CEK EMAIL ANDA',
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(fontSize: 18.sp, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 28),
                  child: Text(
                    'Silahkan cek email anda untuk mengikuti instruksi selanjutnya',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge!.apply(color: Colors.black),
                  ),
                ),
                CustomButton(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 49.h,
                  color: colorScheme.primary,
                  onTap: () => controller.checkEmail(),
                  child: Text(
                    'Cek Email',
                    style: textTheme.titleMedium!.apply(color: colorScheme.onPrimary),
                  ),
                ),
                CustomButton(
                  onTap: () => Get.offNamed(Routes.LOGIN),
                  borderRadius: BorderRadius.zero,
                  useConstrain: false,
                  child: Text(
                    'Saya akan cek nanti',
                    style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
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
