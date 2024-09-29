import 'package:get/get.dart' as pget;

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';

class PengajuanRepo extends Repository {
  // get semua pengajuan
  Future<pget.Response> getAllSubm(PengajuanReq? request) async {
    return await con.get('/list-pengajuan', query: request?.toMap());
  }

  // get proses pengajuan
  Future<pget.Response> getProcesSubm(PengajuanReq? request) async {
    return await con.get('/list-proses', query: request?.toMap());
  }

  // get selesai pengajuan
  Future<pget.Response> getFinishSubm(PengajuanReq? request) async {
    return await con.get('/list-selesai', query: request?.toMap());
  }
}
