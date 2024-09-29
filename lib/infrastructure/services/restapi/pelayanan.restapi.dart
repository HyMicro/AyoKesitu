import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/utils/extensions/extensions.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';

class PelayananService extends pget.GetxService {
  PelayananRepo pelayananRepo = pget.Get.find();

  // detail akta kelahiran
  detailAktaKel({AktaKelDetailReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.getAktaKel(aktaReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => AktaKelahiran.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => AktaKelCreateErr.fromMap(error));
  }

  // create akta kelahiran
  createAktaKel({AktaKelCreateReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.postAktaKel(aktaReq);
    if (aktaResp.statusCode.isOk) {
      final restAkta = Restapi.fromMap(aktaResp.data, dataFrom: (akta) => AktaKelahiran.fromMap(akta));
      if (restAkta.success) {
        return Restapi(success: true, data: restAkta.data);
      }
      return Restapi.fromMap(aktaResp.data);
    }
    return Restapi.fromMap(aktaResp.data, errorFom: (error) => AktaKelCreateErr.fromMap(error));
  }

  // update akta kelahiran
  updateAktaKel({AktaKelUpdateReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.putAktaKel(aktaReq);
    if (aktaResp.statusCode.isOk) {
      final restAkta = Restapi.fromMap(aktaResp.data, dataFrom: (akta) => AktaKelahiran.fromMap(akta));
      if (restAkta.success) {
        return Restapi(success: true, data: restAkta.data);
      }
      return Restapi.fromMap(aktaResp.data);
    }
    return Restapi.fromMap(aktaResp.data, errorFom: (error) => AktaKelUpdateErr.fromMap(error));
  }

  // detail akta kematian
  detailAktaKem({AktaKemDetailReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.getAktaKem(aktaReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => AktaKematian.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => AktaKemCreateErr.fromMap(error));
  }

  // create akta kematian
  createAktaKem({AktaKemCreateReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.postAktaKem(aktaReq);
    if (aktaResp.statusCode.isOk) {
      final restAkta = Restapi.fromMap(aktaResp.data, dataFrom: (akta) => AktaKematian.fromMap(akta));
      if (restAkta.success) {
        return Restapi(success: true, data: restAkta.data);
      }
      return Restapi.fromMap(aktaResp.data);
    }
    return Restapi.fromMap(aktaResp.data, errorFom: (error) => AktaKemCreateErr.fromMap(error));
  }

  // update akta kematian
  updateAktaKem({AktaKemUpdateReq? aktaReq}) async {
    final aktaResp = await pelayananRepo.putAktaKem(aktaReq);
    if (aktaResp.statusCode.isOk) {
      final restAkta = Restapi.fromMap(aktaResp.data, dataFrom: (akta) => AktaKematian.fromMap(akta));
      if (restAkta.success) {
        return Restapi(success: true, data: restAkta.data);
      }
      return Restapi.fromMap(aktaResp.data);
    }
    return Restapi.fromMap(aktaResp.data, errorFom: (error) => AktaKemUpdateErr.fromMap(error));
  }

  // detail allin one
  detailAllinOne({AllinOneDetailReq? allReq}) async {
    final aktaResp = await pelayananRepo.getAllinOne(allReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => AllinOne.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => AllinOneCreateErr.fromMap(error));
  }

  // create allin one
  createAllinOne({AllinOneCreateReq? allReq}) async {
    final allResp = await pelayananRepo.postAllinOne(allReq);
    if (allResp.statusCode.isOk) {
      final restAllinOne = Restapi.fromMap(allResp.data, dataFrom: (all) => AllinOne.fromMap(all));
      if (restAllinOne.success) {
        return Restapi(success: true, data: restAllinOne.data);
      }
      return Restapi.fromMap(allResp.data);
    }
    return Restapi.fromMap(allResp.data, errorFom: (error) => AllinOneCreateErr.fromMap(error));
  }

  // update allin one
  updateAllinOne({AllinOneUpdateReq? allReq}) async {
    final allResp = await pelayananRepo.putAllinOne(allReq);
    if (allResp.statusCode.isOk) {
      final restAllinOne = Restapi.fromMap(allResp.data, dataFrom: (all) => AllinOne.fromMap(all));
      if (restAllinOne.success) {
        return Restapi(success: true, data: restAllinOne.data);
      }
      return Restapi.fromMap(allResp.data);
    }
    return Restapi.fromMap(allResp.data, errorFom: (error) => AllinOneUpdateErr.fromMap(error));
  }

  // detail kartu identitas anak
  detailKia({KiaDetailReq? kiaReq}) async {
    final aktaResp = await pelayananRepo.getKia(kiaReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => Kia.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => KiaCreateErr.fromMap(error));
  }

  // create kartu identitas anak
  createKia({KiaCreateReq? kiaReq}) async {
    final kiaResp = await pelayananRepo.postKia(kiaReq);
    if (kiaResp.statusCode.isOk) {
      final restKia = Restapi.fromMap(kiaResp.data, dataFrom: (kia) => Kia.fromMap(kia));
      if (restKia.success) {
        return Restapi(success: true, data: restKia.data);
      }
      return Restapi.fromMap(kiaResp.data);
    }
    return Restapi.fromMap(kiaResp.data, errorFom: (error) => KiaCreateErr.fromMap(error));
  }

  // update kartu identitas anak
  updateKia({KiaUpdateReq? kiaReq}) async {
    final kiaResp = await pelayananRepo.putKia(kiaReq);
    if (kiaResp.statusCode.isOk) {
      final restKia = Restapi.fromMap(kiaResp.data, dataFrom: (kia) => Kia.fromMap(kia));
      if (restKia.success) {
        return Restapi(success: true, data: restKia.data);
      }
      return Restapi.fromMap(kiaResp.data);
    }
    return Restapi.fromMap(kiaResp.data, errorFom: (error) => KiaUpdateErr.fromMap(error));
  }

  // detail kartu keluarga
  detailKk({KkDetailReq? kkReq}) async {
    final aktaResp = await pelayananRepo.getKk(kkReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => Kk.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => KkCreateErr.fromMap(error));
  }

  // create kartu keluarga
  createKk({KkCreateReq? kkReq}) async {
    final kkResp = await pelayananRepo.postKk(kkReq);
    if (kkResp.statusCode.isOk) {
      final restKk = Restapi.fromMap(kkResp.data, dataFrom: (ktp) => Kk.fromMap(ktp));
      if (restKk.success) {
        return Restapi(success: true, data: restKk.data);
      }
      return Restapi.fromMap(kkResp.data);
    }
    return Restapi.fromMap(kkResp.data, errorFom: (error) => KkCreateErr.fromMap(error));
  }

  // update kartu keluarga
  updateKk({KkUpdateReq? kkReq}) async {
    final kkResp = await pelayananRepo.putKk(kkReq);
    if (kkResp.statusCode.isOk) {
      final restKk = Restapi.fromMap(kkResp.data, dataFrom: (ktp) => Kk.fromMap(ktp));
      if (restKk.success) {
        return Restapi(success: true, data: restKk.data);
      }
      return Restapi.fromMap(kkResp.data);
    }
    return Restapi.fromMap(kkResp.data, errorFom: (error) => KkUpdateErr.fromMap(error));
  }

  // detail kartu tanda penduduk
  detailKtp({KtpDetailReq? ktpReq}) async {
    final aktaResp = await pelayananRepo.getKtp(ktpReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => Ktp.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => KtpCreateErr.fromMap(error));
  }

  // create kartu tanda penduduk
  createKtp({KtpCreateReq? ktpReq}) async {
    final ktpResp = await pelayananRepo.postKtp(ktpReq);
    if (ktpResp.statusCode.isOk) {
      final restKtp = Restapi.fromMap(ktpResp.data, dataFrom: (ktp) => Ktp.fromMap(ktp));
      if (restKtp.success) {
        return Restapi(success: true, data: restKtp.data);
      }
      return Restapi.fromMap(ktpResp.data);
    }
    return Restapi.fromMap(ktpResp.data, errorFom: (error) => KtpCreateErr.fromMap(error));
  }

  // update kartu tanda penduduk
  updateKtp({KtpUpdateReq? ktpReq}) async {
    final ktpResp = await pelayananRepo.putKtp(ktpReq);
    if (ktpResp.statusCode.isOk) {
      final restKtp = Restapi.fromMap(ktpResp.data, dataFrom: (ktp) => Ktp.fromMap(ktp));
      if (restKtp.success) {
        return Restapi(success: true, data: restKtp.data);
      }
      return Restapi.fromMap(ktpResp.data);
    }
    return Restapi.fromMap(ktpResp.data, errorFom: (error) => KtpUpdateErr.fromMap(error));
  }

  // detail paket kematian
  detailPaketKem({PaketKemDetailReq? paketReq}) async {
    final aktaResp = await pelayananRepo.getPaketKem(paketReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => PaketKematian.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => PaketKemCreateErr.fromMap(error));
  }

  // create paket kematian
  createPaketKematian({PaketKemCreateReq? paketReq}) async {
    final paketResp = await pelayananRepo.postPaketKem(paketReq);
    if (paketResp.statusCode.isOk) {
      final restPaketKem = Restapi.fromMap(paketResp.data, dataFrom: (paket) => PaketKematian.fromMap(paket));
      if (restPaketKem.success) {
        return Restapi(success: true, data: restPaketKem.data);
      }
      return Restapi.fromMap(paketResp.data);
    }
    return Restapi.fromMap(paketResp.data, errorFom: (error) => PaketKemCreateErr.fromMap(error));
  }

  // update paket kematian
  updatePaketKematian({PaketKemUpdateReq? paketReq}) async {
    final paketResp = await pelayananRepo.putPaketKem(paketReq);
    if (paketResp.statusCode.isOk) {
      final restPaketKem = Restapi.fromMap(paketResp.data, dataFrom: (paket) => PaketKematian.fromMap(paket));
      if (restPaketKem.success) {
        return Restapi(success: true, data: restPaketKem.data);
      }
      return Restapi.fromMap(paketResp.data);
    }
    return Restapi.fromMap(paketResp.data, errorFom: (error) => PaketKemUpdateErr.fromMap(error));
  }

  // detail penambahan anak
  detailPenamAnak({PenamAnakDetailReq? anakReq}) async {
    final aktaResp = await pelayananRepo.getPenamAnak(anakReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => PenambahanAnak.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => PenamAnakCreateErr.fromMap(error));
  }

  // create penambahan anak
  createPenambahanAnak({PenamAnakCreateReq? anakReq}) async {
    final anakResp = await pelayananRepo.postPenamAnak(anakReq);
    if (anakResp.statusCode.isOk) {
      final restPenamAnak = Restapi.fromMap(anakResp.data, dataFrom: (anak) => PenambahanAnak.fromMap(anak));
      if (restPenamAnak.success) {
        return Restapi(success: true, data: restPenamAnak.data);
      }
      return Restapi.fromMap(anakResp.data);
    }
    return Restapi.fromMap(anakResp.data, errorFom: (error) => PenamAnakCreateErr.fromMap(error));
  }

  // update penambahan anak
  updatePenambahanAnak({PenamAnakUpdateReq? anakReq}) async {
    final anakResp = await pelayananRepo.putPenamAnak(anakReq);
    if (anakResp.statusCode.isOk) {
      final restPenamAnak = Restapi.fromMap(anakResp.data, dataFrom: (anak) => PenambahanAnak.fromMap(anak));
      if (restPenamAnak.success) {
        return Restapi(success: true, data: restPenamAnak.data);
      }
      return Restapi.fromMap(anakResp.data);
    }
    return Restapi.fromMap(anakResp.data, errorFom: (error) => PenamAnakUpdateErr.fromMap(error));
  }

  // detail sinkronasi data
  detailSinkronasiData({SinkronDataDetailReq? sinkronDataReq}) async {
    final aktaResp = await pelayananRepo.getSinkronasiData(sinkronDataReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => SinkronasiData.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => SinkronDataCreateErr.fromMap(error));
  }

  // create sinkronasi data
  createSinkronasiData({SinkronDataCreateReq? sinkronDataReq}) async {
    final sinkronDataResp = await pelayananRepo.postSinkronasiData(sinkronDataReq);
    if (sinkronDataResp.statusCode.isOk) {
      final restSinkronData =
          Restapi.fromMap(sinkronDataResp.data, dataFrom: (sinkronData) => SinkronasiData.fromMap(sinkronData));
      if (restSinkronData.success) {
        return Restapi(success: true, data: restSinkronData.data);
      }
      return Restapi.fromMap(sinkronDataResp.data);
    }
    return Restapi.fromMap(sinkronDataResp.data, errorFom: (error) => SinkronDataCreateErr.fromMap(error));
  }

  // update sinkronasi data
  updateSinkronasiData({SinkronDataUpdateReq? sinkronDataReq}) async {
    final sinkronDataResp = await pelayananRepo.putSinkronasiData(sinkronDataReq);
    if (sinkronDataResp.statusCode.isOk) {
      final restSinkronData =
          Restapi.fromMap(sinkronDataResp.data, dataFrom: (sinkronData) => SinkronasiData.fromMap(sinkronData));
      if (restSinkronData.success) {
        return Restapi(success: true, data: restSinkronData.data);
      }
      return Restapi.fromMap(sinkronDataResp.data);
    }
    return Restapi.fromMap(sinkronDataResp.data, errorFom: (error) => SinkronDataUpdateErr.fromMap(error));
  }

  // detail surat keterangan
  detailSuket({SuketDetailReq? suketReq}) async {
    final aktaResp = await pelayananRepo.getSuket(suketReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => Suket.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => SuketCreateErr.fromMap(error));
  }

  // create surat keterangan
  createSuket({SuketCreateReq? suketReq}) async {
    final suketResp = await pelayananRepo.postSuket(suketReq);
    if (suketResp.statusCode.isOk) {
      final restSuket = Restapi.fromMap(suketResp.data, dataFrom: (suket) => Suket.fromMap(suket));
      if (restSuket.success) {
        return Restapi(success: true, data: restSuket.data);
      }
      return Restapi.fromMap(suketResp.data);
    }
    return Restapi.fromMap(suketResp.data, errorFom: (error) => SuketCreateErr.fromMap(error));
  }

  // update surat keterangan
  updateSuket({SuketUpdateReq? suketReq}) async {
    final suketResp = await pelayananRepo.putSuket(suketReq);
    if (suketResp.statusCode.isOk) {
      final restSuket = Restapi.fromMap(suketResp.data, dataFrom: (suket) => Suket.fromMap(suket));
      if (restSuket.success) {
        return Restapi(success: true, data: restSuket.data);
      }
      return Restapi.fromMap(suketResp.data);
    }
    return Restapi.fromMap(suketResp.data, errorFom: (error) => SuketUpdateErr.fromMap(error));
  }

  // detail surat pindah
  detailSuratPindah({SuratPindahDetailReq? suratReq}) async {
    final aktaResp = await pelayananRepo.getSuratPindah(suratReq);
    if (aktaResp.isOk) {
      return Restapi.fromMap(aktaResp.body, dataFrom: (data) => SuratPindah.fromMap(data));
    }
    return Restapi.fromMap(aktaResp.body, errorFom: (error) => SuratPindahCreateErr.fromMap(error));
  }

  // create surat pindah
  createSuratPindah({SuratPindahCreateReq? suratReq}) async {
    final suratResp = await pelayananRepo.postSuratPindah(suratReq);
    if (suratResp.statusCode.isOk) {
      final restSurat = Restapi.fromMap(suratResp.data, dataFrom: (surat) => SuratPindah.fromMap(surat));
      if (restSurat.success) {
        return Restapi(success: true, data: restSurat.data);
      }
      return Restapi.fromMap(restSurat.data);
    }
    return Restapi.fromMap(suratResp.data, errorFom: (error) => SuratPindahCreateErr.fromMap(error));
  }

  // update surat pindah
  updateSuratPindah({SuratPindahUpdateReq? suratReq}) async {
    final suratResp = await pelayananRepo.putSuratPindah(suratReq);
    if (suratResp.statusCode.isOk) {
      final restSurat = Restapi.fromMap(suratResp.data, dataFrom: (surat) => SuratPindah.fromMap(surat));
      if (restSurat.success) {
        return Restapi(success: true, data: restSurat.data);
      }
      return Restapi.fromMap(restSurat.data);
    }
    return Restapi.fromMap(suratResp.data, errorFom: (error) => SuratPindahUpdateErr.fromMap(error));
  }
}
