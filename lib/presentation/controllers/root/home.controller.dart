import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/services/services.dart';
import 'package:ayo_kesitu/presentation/controllers/controllers.dart';

class HomeController extends AuthController {
  @override
  void onInit() async {
    await getPengajuan();
    super.onInit();
  }

  // get pengjuan semua
  final pengajuanService = PengajuanService();
  final subSemua = RxList<Pengajuan>();
  getPengajuan() async {
    Restapi response = await pengajuanService.allSubmission(
      pengReq: PengajuanReq(perpage: 4.toString()),
    );
    if (response.success) {
      subSemua(response.data);
      update();
    }
  }
}
