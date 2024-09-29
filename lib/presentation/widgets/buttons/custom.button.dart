import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(horizontal: 5, vertical: 5);

  CustomButton({
    super.key,
    this.useConstrain = true,
    this.padding = defaultPadding,
    this.margin,
    this.width,
    this.height,
    this.color,
    this.gradient,
    this.borderRadius = defaultBorderRadius,
    this.boxShadow,
    this.border,
    this.icon,
    this.iconColor,
    this.onTap,
    this.splashColor,
    this.alignment = Alignment.center,
    this.child,
  });

  final bool useConstrain;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final AlignmentGeometry alignment;
  final BoxBorder? border;
  Color? splashColor;

  final IconData? icon;
  final Color? iconColor;
  final void Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    final lightTheme = themeContext.brightness == Brightness.light;

    splashColor ??= colorScheme.onBackground.withOpacity(0.2);

    if (useConstrain) return Content();
    return UnconstrainedBox(child: Content());
  }

  Widget Content() {
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
          onTap: onTap,
          splashColor: splashColor,
          borderRadius: borderRadius,
          child: Container(
            alignment: alignment,
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
