import 'package:flutter/material.dart';

// convert list string to widget
class ToStrings extends StatelessWidget {
  const ToStrings({
    super.key,
    required this.content,
    this.data = const [],
  });

  final List<String> data;
  final Widget? Function(String, int) content;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return content(data[index], index);
      },
    );
  }
}
