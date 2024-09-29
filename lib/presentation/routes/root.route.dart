import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/bindings/bindings.dart';
import 'package:ayo_kesitu/presentation/pages/pages.dart';
import 'package:ayo_kesitu/presentation/routes/routes.dart';

List<GetPage> rootRoute = [
  GetPage(
    name: Routes.ROOT,
    page: () => const RootPage(),
    binding: RootBinding(),
  ),
  GetPage(
    name: Routes.HELP,
    page: () => const HelpPage(),
    binding: HelpBinding(),
  ),
];
