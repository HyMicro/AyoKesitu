import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 31),
      width: context.width,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorScheme.primary,
      ),
      child: Column(children: [
        // navigation
        Container(
          margin: const EdgeInsets.only(top: 18),
          width: context.width,
          height: 32.h,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Stack(children: [
            // back button
            Positioned(
              top: 0,
              bottom: 0,
              child: CustomButton(
                borderRadius: BorderRadius.circular(24),
                padding: const EdgeInsets.all(4),
                onTap: backTap,
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: colorScheme.onPrimary,
                ),
              ),
            ),

            // header
            Align(
              alignment: Alignment.center,
              child: Text(
                'Bantuan',
                style: textTheme.displayLarge!.apply(color: colorScheme.onPrimary),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
