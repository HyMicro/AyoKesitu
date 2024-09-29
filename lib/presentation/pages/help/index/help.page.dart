import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';
import 'widgets/topbar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<HelpController>(builder: (controller) {
      return Scaffold(
        body: Column(children: [
          Topbar(backTap: () => Get.back()),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(left: 20, right: 20),
              children: [
                // title
                Container(
                  margin: const EdgeInsets.only(top: 49),
                  child: Text(
                    'Pusat Bantuan',
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(fontSize: 18.sp),
                  ),
                ),

                // message
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Silahkan hubungi kontak dibawah ini untuk pusat bantuan Dukcapil kab Rejang Lebong',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge,
                  ),
                ),

                // messanger
                CustomButton(
                  height: 50.h,
                  margin: const EdgeInsets.only(top: 47),
                  border: Border.all(color: colorScheme.primary, width: 1.w),
                  onTap: () => controller.helpMessenger(),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset(ConstHelpImage.messanger),
                    ),
                    Text(
                      'Messenger',
                      style: textTheme.titleMedium!.apply(
                        color: colorScheme.primary,
                      ),
                    ),
                  ]),
                ),

                // whatsapp
                CustomButton(
                  height: 50.h,
                  margin: const EdgeInsets.only(top: 20),
                  border: Border.all(color: colorScheme.inversePrimary, width: 1.w),
                  onTap: () => controller.helpWhatsapp(),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset(ConstHelpImage.whatsapp),
                    ),
                    Text(
                      'Whatsapp',
                      style: textTheme.titleMedium!.apply(
                        color: colorScheme.inversePrimary,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ]),
      );
    });
  }
}
