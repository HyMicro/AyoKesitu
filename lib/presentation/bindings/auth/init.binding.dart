import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/services/download/download.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';
import 'package:ayo_kesitu/infrastructure/services/notifies/notifies.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    // services
    Get.put(DownFileService(), permanent: true);
    Get.put(AuthStorageService(), permanent: true);
    // Get.put(NotifLocalService(), permanent: true);

    // repository
    Get.put(RestAuthRepo());

    // controllers
    Get.put(InitController(), permanent: true);
  }
}
