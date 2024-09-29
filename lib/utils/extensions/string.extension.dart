import 'package:get/get.dart';

extension StringExtensions on String {
  String? get titleCase => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalize).join(' ');
  String? get snakeAlasan => replaceAll(' ', '_').toLowerCase();
  String? get spaceAlasan => replaceAll('_', ' ').titleCase;
}
