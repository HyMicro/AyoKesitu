import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';
import 'package:ayo_kesitu/utils/consts/consts.dart';

class BottomTab extends StatelessWidget {
  const BottomTab({super.key, required this.controller});
  final RootController controller;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 74.h,
        width: context.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colorScheme.background,
          boxShadow: [
            BoxShadow(
              color: colorScheme.onBackground,
              offset: const Offset(0, 8.0),
              blurRadius: 10.0,
              spreadRadius: 2,
            ),
          ],
        ),
        child: TabBar(
          dividerColor: Colors.transparent,
          labelColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          padding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          controller: controller.tabControl,
          indicatorWeight: 1,
          onTap: (value) => controller.update(),
          tabs: [
            SizedBox(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.home_outlined,
                  size: 20.dm,
                  color: controller.tabControl.index == 0 ? colorScheme.primary : colorScheme.tertiaryContainer,
                ),
                Text(
                  "Beranda",
                  style: controller.tabControl.index == 0
                      ? textTheme.titleMedium!.apply(color: colorScheme.primary)
                      : textTheme.bodyMedium!.apply(color: colorScheme.tertiaryContainer),
                ),
              ]),
            ),
            SizedBox(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: SvgPicture.asset(
                    ConstRootSvg.pengajuan,
                    height: 16.h,
                    width: 16.w,
                    color: controller.tabControl.index == 1 ? colorScheme.primary : colorScheme.tertiaryContainer,
                  ),
                ),
                Text(
                  "Pengajuan",
                  style: controller.tabControl.index == 1
                      ? textTheme.titleMedium!.apply(color: colorScheme.primary)
                      : textTheme.bodyMedium!.apply(color: colorScheme.tertiaryContainer),
                ),
              ]),
            ),
            SizedBox(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.person_outline_rounded,
                  size: 20.dm,
                  color: controller.tabControl.index == 2 ? colorScheme.primary : colorScheme.tertiaryContainer,
                ),
                Text(
                  "Profile",
                  style: controller.tabControl.index == 2
                      ? textTheme.titleMedium!.apply(color: colorScheme.primary)
                      : textTheme.bodyMedium!.apply(color: colorScheme.tertiaryContainer),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
