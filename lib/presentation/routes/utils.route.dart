import 'package:get/get.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

class UtilsRoute {
  static GetPage notFound = GetPage(
    name: Routes.NOTFOUND,
    page: () => const NotFoundPage(),
  );
}
