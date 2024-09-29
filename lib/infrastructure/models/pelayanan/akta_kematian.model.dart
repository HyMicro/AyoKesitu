import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model akta kematian
class AktaKematian {
  final int? id;
  final String? nama;
  final String? noKk;
  final String? nik;
  final String? anakKe;
  final String? saksi1;
  final String? nikSaksi1;
  final String? saksi2;
  final String? nikSaksi2;
  final DateTime? jamKematian;
  final String? scanKk;
  final String? scanSuratKematian;
  final String? scanKtp;
  final String? email;
  final String? noWa;
  final String? status;
  final String? catatanTolak;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  AktaKematian({
    this.id,
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.jamKematian,
    this.scanKk,
    this.scanSuratKematian,
    this.scanKtp,
    this.email,
    this.noWa,
    this.status,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory AktaKematian.fromMap(Map<String, dynamic> map) => AktaKematian(
        id: map["id"],
        nama: map["nama"],
        noKk: map["no_kk"],
        nik: map["nik"],
        anakKe: map["anak_ke"],
        saksi1: map["saksi_1"],
        nikSaksi1: map["nik_saksi_1"],
        saksi2: map["saksi_2"],
        nikSaksi2: map["nik_saksi_2"],
        jamKematian: map["jam_kematian"] == null ? null : DateTime.parse(map["jam_kematian"]),
        scanKk: map["scan_kk"],
        scanSuratKematian: map["scan_surat_kematian"],
        scanKtp: map["scan_ktp"],
        email: map["email"],
        noWa: map["no_wa"],
        status: map["status"],
        catatanTolak: map["catatan_tolak"],
        fileDokumen: map["file_dokumen"],
        opsiPengambilan: map["opsi_pengambilan"],
        createdAt: map["created_at"] == null ? null : DateTime.parse(map["created_at"]),
        updatedAt: map["updated_at"] == null ? null : DateTime.parse(map["updated_at"]),
        deletedAt: map["deleted_at"] == null ? null : DateTime.parse(map["deleted_at"]),
      );

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nama": nama,
      "no_kk": noKk,
      "nik": nik,
      "anak_ke": anakKe,
      "saksi_1": saksi1,
      "nik_saksi_1": nikSaksi1,
      "saksi_2": saksi2,
      "nik_saksi_2": nikSaksi2,
      "jam_kematian": jamKematian?.toIso8601String(),
      "scan_kk": scanKk,
      "scan_surat_kematian": scanSuratKematian,
      "scan_ktp": scanKtp,
      "email": email,
      "no_wa": noWa,
      "status": status,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
      "deleted_at": deletedAt?.toIso8601String(),
    };
  }
}

// request detail akta kematian
class AktaKemDetailReq {
  final String? id;

  AktaKemDetailReq({
    this.id,
  });
}

// request create akta kematian
class AktaKemCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AktaKemCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update akta kematian
class AktaKemUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AktaKemUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create akta kematian
class AktaKemCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? anakKe;
  final List<String>? saksi1;
  final List<String>? nikSaksi1;
  final List<String>? saksi2;
  final List<String>? nikSaksi2;
  final List<String>? jamKematian;
  final List<String>? scanKk;
  final List<String>? scanSuratKematian;
  final List<String>? scanKtp;
  final List<String>? opsiPengambilan;

  AktaKemCreateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.jamKematian,
    this.scanKk,
    this.scanSuratKematian,
    this.scanKtp,
    this.opsiPengambilan,
  });

  factory AktaKemCreateErr.fromMap(Map<String, dynamic>? map) {
    return AktaKemCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      anakKe: List<String>.from(map?['anak_ke'] ?? []),
      saksi1: List<String>.from(map?['saksi_1'] ?? []),
      nikSaksi1: List<String>.from(map?['nik_saksi_1'] ?? []),
      saksi2: List<String>.from(map?['saksi_2'] ?? []),
      nikSaksi2: List<String>.from(map?['nik_saksi_2'] ?? []),
      jamKematian: List<String>.from(map?['jam_kematian'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanSuratKematian: List<String>.from(map?['scan_surat_kematian'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'anak_ke': anakKe ?? [],
      'saksi_1': saksi1 ?? [],
      'nik_saksi_1': nikSaksi1 ?? [],
      'saksi_2': saksi2 ?? [],
      'nik_saksi_2': nikSaksi2 ?? [],
      'jam_kematian': jamKematian ?? [],
      'scan_kk': scanKk ?? [],
      'scan_surat_kematian': scanSuratKematian ?? [],
      'scan_ktp': scanKtp ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update akta kematian
class AktaKemUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? anakKe;
  final List<String>? saksi1;
  final List<String>? nikSaksi1;
  final List<String>? saksi2;
  final List<String>? nikSaksi2;
  final List<String>? jamKematian;
  final List<String>? scanKk;
  final List<String>? scanSuratKematian;
  final List<String>? scanKtp;
  final List<String>? opsiPengambilan;

  AktaKemUpdateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.jamKematian,
    this.scanKk,
    this.scanSuratKematian,
    this.scanKtp,
    this.opsiPengambilan,
  });

  factory AktaKemUpdateErr.fromMap(Map<String, dynamic>? map) {
    return AktaKemUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      anakKe: List<String>.from(map?['anak_ke'] ?? []),
      saksi1: List<String>.from(map?['saksi_1'] ?? []),
      nikSaksi1: List<String>.from(map?['nik_saksi_1'] ?? []),
      saksi2: List<String>.from(map?['saksi_2'] ?? []),
      nikSaksi2: List<String>.from(map?['nik_saksi_2'] ?? []),
      jamKematian: List<String>.from(map?['jam_kematian'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanSuratKematian: List<String>.from(map?['scan_surat_kematian'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'anak_ke': anakKe ?? [],
      'saksi_1': saksi1 ?? [],
      'nik_saksi_1': nikSaksi1 ?? [],
      'saksi_2': saksi2 ?? [],
      'nik_saksi_2': nikSaksi2 ?? [],
      'jam_kematian': jamKematian ?? [],
      'scan_kk': scanKk ?? [],
      'scan_surat_kematian': scanSuratKematian ?? [],
      'scan_ktp': scanKtp ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
