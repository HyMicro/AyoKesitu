import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/bindings/bindings.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

List<GetPage> authRoute = [
  GetPage(
    name: Routes.LOGIN,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: Routes.FORGOT,
    page: () => const ForgotPassPage(),
    binding: ForgotPassBinding(),
  ),
  GetPage(
    name: Routes.CHECK_EMAIL,
    page: () => const CheckEmailPage(),
    binding: ForgotPassBinding(),
  ),
  GetPage(
    name: Routes.NEW_PASS,
    page: () => const ResetPassPage(),
    binding: ForgotPassBinding(),
  ),
];
