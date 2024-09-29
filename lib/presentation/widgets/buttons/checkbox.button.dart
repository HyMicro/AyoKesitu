// https://api.flutter.dev/flutter/material/CheckboxListTile-class.html
// https://api.flutter.dev/flutter/material/Checkbox-class.html

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckboxButton extends StatelessWidget {
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(0));

  CheckboxButton({
    super.key,

    // Tile attributes
    this.useConstrain = true,
    this.margin,
    this.width,
    this.height = 25,
    this.color,
    this.gradient,
    this.borderRadius = defaultBorderRadius,
    this.boxShadow,
    this.border,
    this.tileTap,
    this.splashColor,
    this.boxAlignment = Alignment.centerLeft,

    // Box attributes
    required this.value,
    this.boxScale = 1,
    this.boxMargin,
    this.activeColor,
    this.checkColor,
    this.boxTap,
    this.prefixes,
    this.suffixes,
  });

// tile attributes
  final bool useConstrain;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final AlignmentGeometry boxAlignment;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  Color? splashColor;

  // box attributes
  final bool value;
  final double? boxScale;
  final EdgeInsets? boxMargin;
  Color? activeColor;
  Color? checkColor;
  final void Function()? tileTap;
  final void Function(bool?)? boxTap;
  final List<Widget>? prefixes;
  final List<Widget>? suffixes;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    final lightTheme = themeContext.brightness == Brightness.light;

    splashColor ??= colorScheme.onBackground.withOpacity(0.2);

    if (useConstrain) return Content(context);
    return UnconstrainedBox(child: Content(context));
  }

  Widget Content(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    // media
    final mediaQuery = MediaQuery.of(context);

    activeColor ??= colorScheme.primary;
    checkColor ??= colorScheme.onPrimary;

    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        border: border,
      ),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: tileTap,
          splashColor: splashColor,
          borderRadius: borderRadius,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: [
              ...?prefixes,
              Container(
                alignment: boxAlignment,
                margin: boxMargin,
                child: Transform.scale(
                  scale: boxScale,
                  child: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: Checkbox(
                      value: value,
                      onChanged: boxTap,
                      activeColor: activeColor,
                      checkColor: checkColor,
                    ),
                  ),
                ),
              ),
              ...?suffixes,
            ],
          ),
        ),
      ),
    );
  }
}
