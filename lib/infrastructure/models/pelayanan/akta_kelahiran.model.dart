import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model akta kelahiran
class AktaKelahiran {
  final int? id;
  final String? nama;
  final String? noKk;
  final String? nik;
  final String? anakKe;
  final String? saksi1;
  final String? nikSaksi1;
  final String? saksi2;
  final String? nikSaksi2;
  final String? scanKk;
  final String? scanSuratLahir;
  final String? scanSuratNikah;
  final String? email;
  final String? noWa;
  final String? status;
  final String? catatanTolak;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  AktaKelahiran({
    this.id,
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.scanKk,
    this.scanSuratLahir,
    this.scanSuratNikah,
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

  factory AktaKelahiran.fromMap(Map<String, dynamic> map) {
    return AktaKelahiran(
      id: map["id"],
      nama: map["nama"],
      noKk: map["no_kk"],
      nik: map["nik"],
      anakKe: map["anak_ke"],
      saksi1: map["saksi_1"],
      nikSaksi1: map["nik_saksi_1"],
      saksi2: map["saksi_2"],
      nikSaksi2: map["nik_saksi_2"],
      scanKk: map["scan_kk"],
      scanSuratLahir: map["scan_surat_lahir"],
      scanSuratNikah: map["scan_surat_nikah"],
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
  }

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
      "scan_kk": scanKk,
      "scan_surat_lahir": scanSuratLahir,
      "scan_surat_nikah": scanSuratNikah,
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

// request detail akta kelahiran
class AktaKelDetailReq {
  final String? id;

  AktaKelDetailReq({
    this.id,
  });
}

// request create akta kelahiran
class AktaKelCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AktaKelCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update akta kelahiran
class AktaKelUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AktaKelUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create akta kelahiran
class AktaKelCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? anakKe;
  final List<String>? saksi1;
  final List<String>? nikSaksi1;
  final List<String>? saksi2;
  final List<String>? nikSaksi2;
  final List<String>? scanKk;
  final List<String>? scanSuratLahir;
  final List<String>? scanSuratNikah;
  final List<String>? opsiPengambilan;

  AktaKelCreateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.scanKk,
    this.scanSuratLahir,
    this.scanSuratNikah,
    this.opsiPengambilan,
  });

  factory AktaKelCreateErr.fromMap(Map<String, dynamic>? map) {
    return AktaKelCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      anakKe: List<String>.from(map?['anak_ke'] ?? []),
      saksi1: List<String>.from(map?['saksi_1'] ?? []),
      nikSaksi1: List<String>.from(map?['nik_saksi_1'] ?? []),
      saksi2: List<String>.from(map?['saksi_2'] ?? []),
      nikSaksi2: List<String>.from(map?['nik_saksi_2'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanSuratLahir: List<String>.from(map?['scan_surat_lahir'] ?? []),
      scanSuratNikah: List<String>.from(map?['scan_surat_nikah'] ?? []),
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
      'scan_kk': scanKk ?? [],
      'scan_surat_lahir': scanSuratLahir ?? [],
      'scan_surat_nikah': scanSuratNikah ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update akta kelahiran
class AktaKelUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? anakKe;
  final List<String>? saksi1;
  final List<String>? nikSaksi1;
  final List<String>? saksi2;
  final List<String>? nikSaksi2;
  final List<String>? scanKk;
  final List<String>? scanSuratLahir;
  final List<String>? scanSuratNikah;
  final List<String>? opsiPengambilan;

  AktaKelUpdateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.anakKe,
    this.saksi1,
    this.nikSaksi1,
    this.saksi2,
    this.nikSaksi2,
    this.scanKk,
    this.scanSuratLahir,
    this.scanSuratNikah,
    this.opsiPengambilan,
  });

  factory AktaKelUpdateErr.fromMap(Map<String, dynamic>? map) {
    return AktaKelUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      anakKe: List<String>.from(map?['anak_ke'] ?? []),
      saksi1: List<String>.from(map?['saksi_1'] ?? []),
      nikSaksi1: List<String>.from(map?['nik_saksi_1'] ?? []),
      saksi2: List<String>.from(map?['saksi_2'] ?? []),
      nikSaksi2: List<String>.from(map?['nik_saksi_2'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanSuratLahir: List<String>.from(map?['scan_surat_lahir'] ?? []),
      scanSuratNikah: List<String>.from(map?['scan_surat_nikah'] ?? []),
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
      'scan_kk': scanKk ?? [],
      'scan_surat_lahir': scanSuratLahir ?? [],
      'scan_surat_nikah': scanSuratNikah ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
