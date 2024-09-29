import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/repository/repository.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    // repository
    Get.put(PengajuanRepo());

    // controllers
    Get.put(RootController(), permanent: true);
    Get.put(HomeController(), permanent: true);
    Get.put(ProfileController(), permanent: true);
  }
}
