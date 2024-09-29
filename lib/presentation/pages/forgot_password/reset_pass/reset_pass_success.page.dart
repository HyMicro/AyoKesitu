import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';

import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

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
                child: SvgPicture.asset(
                  ConstForgotPassSvg.success,
                  width: 48.w,
                  height: 48.h,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Password berhasil diganti',
                  textAlign: TextAlign.center,
                  style: textTheme.titleLarge!.copyWith(fontSize: 18.sp),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 42),
                width: 270.w,
                child: Text(
                  'Silahkan login dengan menggunakan password yang baru',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium,
                ),
              ),
              CustomButton(
                height: 49.h,
                color: colorScheme.primary,
                onTap: () => Get.offAllNamed(Routes.LOGIN),
                child: Text(
                  'Login',
                  style: textTheme.titleMedium!.apply(color: colorScheme.onPrimary),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
