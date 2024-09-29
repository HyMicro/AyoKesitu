import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

class RoundTextField extends StatelessWidget {
  static const Offset defaultShadowOffet = Offset(0, 0);
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(7));
  static const EdgeInsets defaultContentPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 20);

  RoundTextField({
    super.key,
    // container
    required this.margin,
    this.useConstrain = true,
    this.width,
    this.shadowColor,
    this.shadowOffset = defaultShadowOffet,
    this.shadowOpacity = 0.1,
    this.shadowSigma,

    // textfield
    this.inputFormatters,
    this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.keyboardType,
    this.onChanged,
    this.labelText,
    this.labelStyle,
    required this.hintText,
    this.hintStyle,
    this.contentPadding = defaultContentPadding,
    this.fillColor,
    this.errorText,
    this.errorStyle,
    this.errorBorderSide,
    this.errorFocusedBorderSide,
    this.borderRadius = defaultBorderRadius,
    this.enabledBorderSide,
    this.focusColor,
    this.focusedBorderSide,
    this.suffix,
    this.suffixIconColor,
    this.prefix,
    this.prefixIconColor,
  });

  // container
  final bool useConstrain;
  final double? width;
  final EdgeInsetsGeometry? margin;
  Color? shadowColor;
  final Offset shadowOffset;
  final double shadowOpacity;

  // textfield
  final TextEditingController? controller;
  final bool obscureText;
  int? maxLines;
  int? minLines;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  double? shadowSigma;
  final List<TextInputFormatter>? inputFormatters;
  TextStyle? style;
  final String? labelText;
  TextStyle? labelStyle;
  final String? hintText;
  TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  Color? fillColor;
  String? errorText;
  TextStyle? errorStyle;
  BorderSide? errorBorderSide;
  BorderSide? errorFocusedBorderSide;
  Color? focusColor;
  BorderSide? enabledBorderSide;
  BorderSide? focusedBorderSide;
  final BorderRadius borderRadius;
  final Widget? suffix;
  final Color? suffixIconColor;
  final Widget? prefix;
  final Color? prefixIconColor;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    final lightTheme = themeContext.brightness == Brightness.light;

    fillColor ??= const Color(0xFFF9F9F9);

    shadowColor ??= colorScheme.onBackground;
    shadowSigma ??= lightTheme ? 0 : 0;

    labelStyle ??= textTheme.titleSmall!.apply(
      color: colorScheme.primary,
    );

    hintStyle ??= textTheme.bodyMedium!.apply(
      color: colorScheme.tertiaryContainer,
    );

    errorStyle ??= themeContext.inputDecorationTheme.errorStyle;
    errorBorderSide ??= BorderSide(
      color: colorScheme.error,
      width: 1.w,
    );
    errorFocusedBorderSide ??= BorderSide(
      color: colorScheme.error,
      width: 1.w,
    );
    focusColor ??= themeContext.inputDecorationTheme.focusColor;
    focusedBorderSide ??= BorderSide(
      color: colorScheme.outline,
      width: 1.w,
    );
    enabledBorderSide ??= const BorderSide(
      color: Colors.transparent,
      width: 0,
    );

    errorText = errorText != null && errorText!.isEmpty ? null : errorText;

    if (useConstrain) return Content();
    return UnconstrainedBox(child: Content());
  }

  Widget Content() {
    return Container(
      margin: margin,
      width: width,
      child: SimpleShadow(
        color: shadowColor!,
        offset: shadowOffset,
        opacity: shadowOpacity,
        sigma: shadowSigma!,
        child: SizedBox(
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            maxLines: maxLines,
            minLines: minLines,
            inputFormatters: inputFormatters,
            style: style,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              labelStyle: labelStyle,
              contentPadding: contentPadding,
              fillColor: fillColor,
              hintStyle: hintStyle,
              errorText: errorText,
              filled: fillColor != null,
              errorStyle: errorStyle,
              errorBorder: OutlineInputBorder(
                borderSide: errorBorderSide!,
                borderRadius: borderRadius,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: enabledBorderSide!,
                borderRadius: borderRadius,
              ),
              focusColor: focusColor,
              focusedBorder: OutlineInputBorder(
                borderSide: focusedBorderSide!,
                borderRadius: borderRadius,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: errorFocusedBorderSide!,
                borderRadius: borderRadius,
              ),
              suffixIcon: suffix,
              suffixIconColor: suffixIconColor,
              prefixIcon: prefix,
              prefixIconColor: prefixIconColor,
            ),
          ),
        ),
      ),
    );
  }
}
