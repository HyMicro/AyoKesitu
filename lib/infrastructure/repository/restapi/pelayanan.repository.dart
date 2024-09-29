import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';

class PelayananRepo extends Repository {
  // get akta kelahiran
  Future<pget.Response> getAktaKel(AktaKelDetailReq? request) async {
    return await con.get('/akta-kelahiran/${request?.id}');
  }

  // post akta kelahiran
  Future<pdio.Response> postAktaKel(AktaKelCreateReq? request) async {
    return await dio.post(
      '/akta-kelahiran',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put akta kelahiran
  Future<pdio.Response> putAktaKel(AktaKelUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/akta-kelahiran/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get akta kematian
  Future<pget.Response> getAktaKem(AktaKemDetailReq? request) async {
    return await con.get('/akta-kematian/${request?.id}');
  }

  // post akta kematian
  Future<pdio.Response> postAktaKem(AktaKemCreateReq? request) async {
    return await dio.post(
      '/akta-kematian',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put akta kematian
  Future<pdio.Response> putAktaKem(AktaKemUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/akta-kematian/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get allin one
  Future<pget.Response> getAllinOne(AllinOneDetailReq? request) async {
    return await con.get('/allin-one/${request?.id}');
  }

  // post allin one
  Future<pdio.Response> postAllinOne(AllinOneCreateReq? request) async {
    return await dio.post(
      '/allin-one',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put allin one
  Future<pdio.Response> putAllinOne(AllinOneUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/allin-one/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get kartu identitas anak
  Future<pget.Response> getKia(KiaDetailReq? request) async {
    return await con.get('/kia/${request?.id}');
  }

  // post kartu identitas anak
  Future<pdio.Response> postKia(KiaCreateReq? request) async {
    return await dio.post(
      '/kia',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put kartu identitas anak
  Future<pdio.Response> putKia(KiaUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/kia/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get kartu keluarga
  Future<pget.Response> getKk(KkDetailReq? request) async {
    return await con.get('/kk/${request?.id}');
  }

  // post kartu keluarga
  Future<pdio.Response> postKk(KkCreateReq? request) async {
    return await dio.post(
      '/kk',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put kartu keluarga
  Future<pdio.Response> putKk(KkUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/kk/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get kartu tanda penduduk
  Future<pget.Response> getKtp(KtpDetailReq? request) async {
    return await con.get('/ktp/${request?.id}');
  }

  // post kartu tanda penduduk
  Future<pdio.Response> postKtp(KtpCreateReq? request) async {
    return await dio.post(
      '/ktp',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put kartu tanda penduduk
  Future<pdio.Response> putKtp(KtpUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/ktp/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get paket kematian
  Future<pget.Response> getPaketKem(PaketKemDetailReq? request) async {
    return await con.get('/paket-kematian/${request?.id}');
  }

  // post paket kematian
  Future<pdio.Response> postPaketKem(PaketKemCreateReq? request) async {
    return await dio.post(
      '/paket-kematian',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put paket kematian
  Future<pdio.Response> putPaketKem(PaketKemUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/paket-kematian/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get penambahan anak
  Future<pget.Response> getPenamAnak(PenamAnakDetailReq? request) async {
    return await con.get('/penambahan-anak/${request?.id}');
  }

  // post penambahan anak
  Future<pdio.Response> postPenamAnak(PenamAnakCreateReq? request) async {
    return await dio.post(
      '/penambahan-anak',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put penambahan anak
  Future<pdio.Response> putPenamAnak(PenamAnakUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/penambahan-anak/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get sinkronasi data
  Future<pget.Response> getSinkronasiData(SinkronDataDetailReq? request) async {
    return await con.get('/sinkronasi-data/${request?.id}');
  }

  // post sinkronasi data
  Future<pdio.Response> postSinkronasiData(SinkronDataCreateReq? request) async {
    return await dio.post(
      '/sinkronasi-data',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put sinkronasi data
  Future<pdio.Response> putSinkronasiData(SinkronDataUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/sinkronasi-data/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get surat keterangan
  Future<pget.Response> getSuket(SuketDetailReq? request) async {
    return await con.get('/suket/${request?.id}');
  }

  // post surat keterangan
  Future<pdio.Response> postSuket(SuketCreateReq? request) async {
    return await dio.post(
      '/suket',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put surat keterangan
  Future<pdio.Response> putSuket(SuketUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/suket/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // get surat pindah
  Future<pget.Response> getSuratPindah(SuratPindahDetailReq? request) async {
    return await con.get('/surat-pindah/${request?.id}');
  }

  // post surat pindah
  Future<pdio.Response> postSuratPindah(SuratPindahCreateReq? request) async {
    return await dio.post(
      '/surat-pindah',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }

  // put surat pindah
  Future<pdio.Response> putSuratPindah(SuratPindahUpdateReq? request) async {
    final setups = pdio.FormData.fromMap({'_method': 'PUT'}).fields;
    request?.formDio?.fields.addAll(setups);

    return await dio.post(
      '/surat-pindah/${request?.id}',
      data: request?.formDio,
      onReceiveProgress: request?.dioRecvProg,
      onSendProgress: request?.dioSendProg,
    );
  }
}
