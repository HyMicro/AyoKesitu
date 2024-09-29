import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/utils/consts/consts.dart';
import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key, this.backTap});
  final void Function()? backTap;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    final topPadding = context.mediaQueryViewPadding.top + 10.h;

    return Container(
      padding: EdgeInsets.only(top: topPadding, bottom: 20.h, left: 8.w, right: 8.w),
      width: context.width,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorScheme.primary,
      ),
      child: Column(children: [
        // navigation
        Container(
          margin: EdgeInsets.only(bottom: 22.h),
          child: Stack(alignment: Alignment.centerLeft, children: [
            // back button
            CustomButton(
              useConstrain: false,
              alignment: Alignment.centerLeft,
              borderRadius: BorderRadius.circular(24.r),
              padding: const EdgeInsets.all(4),
              onTap: backTap,
              child: Icon(
                Icons.arrow_back_rounded,
                color: colorScheme.onPrimary,
              ),
            ),

            // header
            Align(
              alignment: Alignment.center,
              child: Text(
                'Profil',
                style: textTheme.displayLarge!.apply(color: colorScheme.onPrimary),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),

        // photo profile
        CustomButton(
          width: 64.r,
          height: 64.r,
          color: colorScheme.onPrimary.withOpacity(0.2),
          padding: EdgeInsets.all(20.r),
          borderRadius: BorderRadius.circular(64.r),
          alignment: Alignment.center,
          onTap: () {},
          child: SvgPicture.network(
            ConstProfileSvg.profile,
            color: colorScheme.onPrimary,
            placeholderBuilder: (context) => const CircularProgressIndicator(),
          ),
        ),
      ]),
    );
  }
}
