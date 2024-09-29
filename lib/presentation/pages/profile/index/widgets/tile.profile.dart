import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ayo_kesitu/presentation/widgets/widgets.dart';

class TileProfile extends StatelessWidget {
  const TileProfile({super.key, required this.title, this.data});

  final String title;
  final String? data;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return CustomButton(
      borderRadius: BorderRadius.zero,
      height: 66,
      border: Border(bottom: BorderSide(color: colorScheme.surfaceVariant, width: 2.w)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Text(title, style: textTheme.bodyLarge!.apply(color: colorScheme.tertiaryContainer)),
          ),
          SizedBox(width: 20.w),
          Expanded(
            flex: 2,
            child: Text('$data', style: textTheme.titleLarge),
          ),
        ],
      ),
    );
  }
}
