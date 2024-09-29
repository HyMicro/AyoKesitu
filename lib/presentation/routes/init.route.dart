import 'package:get/get.dart';
import 'package:ayo_kesitu/presentation/bindings/bindings.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

List<GetPage> initRoute = [
  GetPage(
    name: Routes.INIT,
    page: () => const OnboardingPage(),
    binding: InitBinding(),
  ),
];
