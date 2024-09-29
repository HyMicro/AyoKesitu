import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/utils/extensions/extensions.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';

class PengajuanService extends pget.GetxService {
  PengajuanRepo pengajuanRepo = pget.Get.find();

  // semua pengajuan
  allSubmission({PengajuanReq? pengReq}) async {
    final allSubmResp = await pengajuanRepo.getAllSubm(pengReq);
    if (allSubmResp.isOk) {
      return Restapi.fromMap(allSubmResp.body, dataFrom: (data) {
        return List<Pengajuan>.from(data.map((x) => Pengajuan.fromMap(x, detailFrom: (detail) => detail)));
      });
    }

    return Restapi.fromMap(allSubmResp.body, errorFom: (error) => PengajuanErr.fromMap(error));
  }

  // proses pengajuan
  procSubmission({PengajuanReq? pengReq}) async {
    final procSubmResp = await pengajuanRepo.getProcesSubm(pengReq);
    if (procSubmResp.isOk) {
      return Restapi.fromMap(procSubmResp.body, dataFrom: (data) {
        return List<Pengajuan>.from(data.map((x) => Pengajuan.fromMap(x, detailFrom: (detail) => detail)));
      });
    }

    return Restapi.fromMap(procSubmResp.body, errorFom: (error) => PengajuanErr.fromMap(error));
  }

  // proses pengajuan
  finSubmission({PengajuanReq? pengReq}) async {
    final finSubmResp = await pengajuanRepo.getFinishSubm(pengReq);
    if (finSubmResp.isOk) {
      return Restapi.fromMap(finSubmResp.body, dataFrom: (data) {
        return List<Pengajuan>.from(data.map((x) => Pengajuan.fromMap(x, detailFrom: (detail) => detail)));
      });
    }

    return Restapi.fromMap(finSubmResp.body, errorFom: (error) => PengajuanErr.fromMap(error));
  }
}
