import 'package:flutter/material.dart';
import 'package:ayo_kesitu/utils/utils.dart';
import 'apps.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorAction.flavor = Flavor.develop;
  runApp(const MainApp());
}
