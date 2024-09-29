// https://pub.dev/packages/dropdown_button2

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnderlineDropDown extends StatelessWidget {
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(7));
  static const EdgeInsets defaultContentPadding = EdgeInsets.symmetric(vertical: 20);

  UnderlineDropDown({
    super.key,
    // container
    required this.margin,
    this.useConstrain = true,

    // dropdown
    required this.dropdownValue,
    required this.onChanged,
    this.hintText,
    this.menuItemStyleData,
    this.buttonStyleData,
    this.dropdownStyleData,
    this.contentPadding = defaultContentPadding,
    this.fillColor,
    this.errorText,
    this.errorStyle,
    this.borderRadius = defaultBorderRadius,
    this.errorBorderSide,
    this.errorFocusedBorderSide,
    this.enabledBorderSide,
    this.focusColor,
    this.focusedBorderSide,
    this.nameItems = const [],
    this.suffix,
    this.suffixIconColor,
    this.prefix,
    this.prefixIconColor,
  });

  // container
  final bool useConstrain;
  final EdgeInsetsGeometry? margin;

  // dropdown
  final String? dropdownValue;
  final Function(String?)? onChanged;
  Widget? hint;
  String? hintText;
  DropdownStyleData? dropdownStyleData;
  MenuItemStyleData? menuItemStyleData;
  ButtonStyleData? buttonStyleData;
  final EdgeInsetsGeometry? contentPadding;
  Color? fillColor;
  String? errorText;
  TextStyle? errorStyle;
  final BorderRadius borderRadius;
  BorderSide? errorBorderSide;
  BorderSide? errorFocusedBorderSide;
  BorderSide? enabledBorderSide;
  Color? focusColor;
  BorderSide? focusedBorderSide;
  List<String> nameItems;
  Widget? suffix;
  Color? suffixIconColor;
  Widget? prefix;
  Color? prefixIconColor;

  @override
  Widget build(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    fillColor ??= colorScheme.surfaceVariant.withOpacity(0.25);

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
      color: colorScheme.primary,
      width: 1.w,
    );
    enabledBorderSide ??= const BorderSide(
      color: Colors.transparent,
      width: 0,
    );

    hint = Text(
      hintText ?? 'Select items',
      style: textTheme.bodyLarge!.apply(color: themeContext.hintColor),
    );

    dropdownStyleData ??= const DropdownStyleData(
      elevation: 1,
      decoration: BoxDecoration(borderRadius: defaultBorderRadius),
    );
    buttonStyleData ??= const ButtonStyleData(padding: EdgeInsets.zero);
    menuItemStyleData ??= const MenuItemStyleData();

    errorText = errorText != null && errorText!.isEmpty ? null : errorText;

    if (useConstrain) return Content(context);
    return UnconstrainedBox(child: Content(context));
  }

  Widget Content(BuildContext context) {
    // themes
    final themeContext = Theme.of(context);
    final colorScheme = themeContext.colorScheme;
    final textTheme = themeContext.textTheme;

    return Container(
      margin: margin,
      child: DropdownButtonFormField2(
        hint: hint,
        value: dropdownValue,
        onChanged: onChanged,
        dropdownStyleData: dropdownStyleData!,
        buttonStyleData: buttonStyleData,
        menuItemStyleData: menuItemStyleData!,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          fillColor: fillColor,
          filled: fillColor != null,
          errorText: errorText,
          errorStyle: errorStyle,
          errorBorder: UnderlineInputBorder(
            borderSide: errorBorderSide!,
            borderRadius: borderRadius,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: enabledBorderSide!,
            borderRadius: borderRadius,
          ),
          focusColor: focusColor,
          focusedBorder: UnderlineInputBorder(
            borderSide: focusedBorderSide!,
            borderRadius: borderRadius,
          ),
          prefixIcon: prefix,
          prefixIconColor: prefixIconColor,
          suffixIcon: suffix,
          suffixIconColor: suffixIconColor,
        ),
        items: nameItems.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value, style: textTheme.bodyMedium),
          );
        }).toList(),
      ),
    );
  }
}
