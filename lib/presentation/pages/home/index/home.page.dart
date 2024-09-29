import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return GetBuilder<HomeController>(builder: (controller) {
      return RefreshIndicator(
        onRefresh: () => controller.getPengajuan(),
        child: Scaffold(
          backgroundColor: colorScheme.secondaryContainer,
          body: Stack(children: [
            // background
            Positioned(
              top: -35,
              width: context.width,
              height: 200.h,
              child: const Image(
                image: AssetImage(ConstRootImage.headlineBg),
                fit: BoxFit.cover,
              ),
            ),

            // content
            SizedBox(
              height: context.height,
              width: context.width,
              child: ListView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 100.h),
                children: [
                  // headline
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text(
                        'SILAKMARO+',
                        textAlign: TextAlign.center,
                        style: textTheme.headlineMedium!.apply(color: Colors.white),
                      ),
                      CustomButton(
                        height: 36.h,
                        width: 36.w,
                        padding: const EdgeInsets.all(4),
                        borderRadius: BorderRadius.circular(36),
                        onTap: () => Get.toNamed(Routes.HELP),
                        child: const Icon(Icons.headset_mic, color: Colors.white),
                      ),
                    ]),
                  ),

                  // greeting
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    padding: const EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      color: themeContext.canvasColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          ConstRootSvg.smile,
                          color: colorScheme.primary,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, ${controller.profile.value?.name ?? ''}',
                            style: textTheme.titleMedium!.apply(color: colorScheme.tertiaryContainer),
                          ),
                          Text(
                            'Selamat Datang',
                            style: textTheme.displayLarge!.apply(color: Colors.black),
                          ),
                        ],
                      ),
                    ]),
                  ),

                  // pelayanan
                  Container(
                    margin: const EdgeInsets.only(top: 11),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    decoration: BoxDecoration(
                      color: colorScheme.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      // tilte
                      Container(
                        width: context.width,
                        height: 32.h,
                        padding: const EdgeInsets.symmetric(horizontal: 27),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: colorScheme.surfaceVariant, width: 1.w)),
                        ),
                        child: Text(
                          'Pelayanan',
                          style: textTheme.displayMedium!.apply(color: Colors.black),
                        ),
                      ),
                      
                      // layanan lainnya
                      CustomButton(
                        useConstrain: false,
                        margin: const EdgeInsets.only(top: 30, bottom: 12),
                        borderRadius: BorderRadius.zero,
                        onTap: () => {},
                        child: Text(
                          'Layanan Lainnya',
                          style: textTheme.headlineMedium!.apply(
                            color: colorScheme.error,
                          ),
                        ),
                      )
                    ]),
                  ),

                  // pengajuan
                  Container(
                    margin: const EdgeInsets.only(top: 11),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    decoration: BoxDecoration(
                      color: colorScheme.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      // tilte
                      Container(
                        width: context.width,
                        height: 32.h,
                        padding: const EdgeInsets.symmetric(horizontal: 27),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: colorScheme.surfaceVariant, width: 1.w)),
                        ),
                        child: Text(
                          'Pengajuan Terakhir',
                          style: textTheme.displayMedium!.apply(color: Colors.black),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      );
    });
  }
}
