import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetxDialog {
  static const defaultPadding = EdgeInsets.all(30);
  static const defaultPhysics = BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());

  static custom(
      {ScrollPhysics physics = defaultPhysics,
      EdgeInsetsGeometry padding = defaultPadding,
      bool barrierDismissible = false,
      List<Widget> children = const []}) {
    Get.dialog(
      Center(
        child: ListView(
          shrinkWrap: true,
          physics: physics,
          padding: padding,
          children: children,
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }
}
