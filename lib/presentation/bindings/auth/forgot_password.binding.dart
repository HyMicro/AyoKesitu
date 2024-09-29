import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class ForgotPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPassController());
  }
}
