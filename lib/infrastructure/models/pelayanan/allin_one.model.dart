import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model allin one
class AllinOne {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? scanKk;
  final String? scanKtp;
  final String? scanBukuNikah;
  final String? scanAktaKelahiran;
  final String? scanKetLahir;
  final String? scanBukuNikahOrtu;
  final String? status;
  final String? email;
  final String? noWa;
  final String? catatanTolak;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  AllinOne({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.scanKtp,
    this.scanBukuNikah,
    this.scanAktaKelahiran,
    this.scanKetLahir,
    this.scanBukuNikahOrtu,
    this.status,
    this.email,
    this.noWa,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory AllinOne.fromMap(Map<String, dynamic> map) {
    return AllinOne(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      scanKk: map["scan_kk"],
      scanKtp: map["scan_ktp"],
      scanBukuNikah: map["scan_buku_nikah"],
      scanAktaKelahiran: map["scan_akta_kelahiran"],
      scanKetLahir: map["scan_ket_lahir"],
      scanBukuNikahOrtu: map["scan_buku_nikah_ortu"],
      status: map["status"],
      email: map["email"],
      noWa: map["no_wa"],
      catatanTolak: map["catatan_tolak"],
      fileDokumen: map["file_dokumen"],
      opsiPengambilan: map["opsi_pengambilan"],
      createdAt: map["created_at"] == null ? null : DateTime.parse(map["created_at"]),
      updatedAt: map["updated_at"] == null ? null : DateTime.parse(map["updated_at"]),
      deletedAt: map["deleted_at"] == null ? null : DateTime.parse(map["updated_at"]),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "no_kk": noKk,
      "nik": nik,
      "nama": nama,
      "scan_kk": scanKk,
      "scan_ktp": scanKtp,
      "scan_buku_nikah": scanBukuNikah,
      "scan_akta_kelahiran": scanAktaKelahiran,
      "scan_ket_lahir": scanKetLahir,
      "scan_buku_nikah_ortu": scanBukuNikahOrtu,
      "status": status,
      "email": email,
      "no_wa": noWa,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
      "deleted_at": deletedAt?.toIso8601String(),
    };
  }
}

// request detail allin one
class AllinOneDetailReq {
  final String? id;

  AllinOneDetailReq({
    this.id,
  });
}

// request create allin one
class AllinOneCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AllinOneCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update allin one
class AllinOneUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  AllinOneUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create allin one
class AllinOneCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanKtp;
  final List<String>? scanBukuNikah;
  final List<String>? scanAktaKelahiran;
  final List<String>? scanKetLahir;
  final List<String>? opsiPengambilan;

  AllinOneCreateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanKtp,
    this.scanBukuNikah,
    this.scanAktaKelahiran,
    this.scanKetLahir,
    this.opsiPengambilan,
  });

  factory AllinOneCreateErr.fromMap(Map<String, dynamic>? map) {
    return AllinOneCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      scanBukuNikah: List<String>.from(map?['scan_buku_nikah'] ?? []),
      scanAktaKelahiran: List<String>.from(map?['scan_akta_kelahiran'] ?? []),
      scanKetLahir: List<String>.from(map?['scan_ket_lahir'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ktp': scanKtp ?? [],
      'scan_buku_nikah': scanBukuNikah ?? [],
      'scan_akta_kelahiran': scanAktaKelahiran ?? [],
      'scan_ket_lahir': scanKetLahir ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update allin one
class AllinOneUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanKtp;
  final List<String>? scanBukuNikah;
  final List<String>? scanAktaKelahiran;
  final List<String>? scanKetLahir;
  final List<String>? opsiPengambilan;

  AllinOneUpdateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanKtp,
    this.scanBukuNikah,
    this.scanAktaKelahiran,
    this.scanKetLahir,
    this.opsiPengambilan,
  });

  factory AllinOneUpdateErr.fromMap(Map<String, dynamic>? map) {
    return AllinOneUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      scanBukuNikah: List<String>.from(map?['scan_buku_nikah'] ?? []),
      scanAktaKelahiran: List<String>.from(map?['scan_akta_kelahiran'] ?? []),
      scanKetLahir: List<String>.from(map?['scan_ket_lahir'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ktp': scanKtp ?? [],
      'scan_buku_nikah': scanBukuNikah ?? [],
      'scan_akta_kelahiran': scanAktaKelahiran ?? [],
      'scan_ket_lahir': scanKetLahir ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
