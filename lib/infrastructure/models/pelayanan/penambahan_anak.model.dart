import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model penambahan anak
class PenambahanAnak {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? scanKk;
  final String? scanBukuNikah;
  final String? scanKtpSuami;
  final String? scanKtpIstri;
  final String? scanKetLahir;
  final String? status;
  final String? catatanTolak;
  final String? email;
  final String? noWa;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  PenambahanAnak({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.scanBukuNikah,
    this.scanKtpSuami,
    this.scanKtpIstri,
    this.scanKetLahir,
    this.status,
    this.catatanTolak,
    this.email,
    this.noWa,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory PenambahanAnak.fromMap(Map<String, dynamic> map) {
    return PenambahanAnak(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      scanKk: map["scan_kk"],
      scanBukuNikah: map["scan_buku_nikah"],
      scanKtpSuami: map["scan_ktp_suami"],
      scanKtpIstri: map["scan_ktp_istri"],
      scanKetLahir: map["scan_ket_lahir"],
      status: map["status"],
      catatanTolak: map["catatan_tolak"],
      email: map["email"],
      noWa: map["no_wa"],
      fileDokumen: map["file_dokumen"],
      opsiPengambilan: map["opsi_pengambilan"],
      createdAt: map["created_at"] == null ? null : DateTime.parse(map["created_at"]),
      updatedAt: map["updated_at"] == null ? null : DateTime.parse(map["updated_at"]),
      deletedAt: map["deleted_at"] == null ? null : DateTime.parse(map["deleted_at"]),
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "no_kk": noKk,
        "nik": nik,
        "nama": nama,
        "scan_kk": scanKk,
        "scan_buku_nikah": scanBukuNikah,
        "scan_ktp_suami": scanKtpSuami,
        "scan_ktp_istri": scanKtpIstri,
        "scan_ket_lahir": scanKetLahir,
        "status": status,
        "catatan_tolak": catatanTolak,
        "email": email,
        "no_wa": noWa,
        "file_dokumen": fileDokumen,
        "opsi_pengambilan": opsiPengambilan,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt?.toIso8601String(),
      };
}

// request detail penambahan anak
class PenamAnakDetailReq {
  final String? id;

  PenamAnakDetailReq({
    this.id,
  });
}

// request create penambahan anak
class PenamAnakCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  PenamAnakCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update penambahan anak
class PenamAnakUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  PenamAnakUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create penambahan anak
class PenamAnakCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanBukuNikah;
  final List<String>? scanKtpIstri;
  final List<String>? scanKtpSuami;
  final List<String>? scanKetLahir;
  final List<String>? opsiPengambilan;

  PenamAnakCreateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanBukuNikah,
    this.scanKtpIstri,
    this.scanKtpSuami,
    this.scanKetLahir,
    this.opsiPengambilan,
  });

  factory PenamAnakCreateErr.fromMap(Map<String, dynamic>? map) {
    return PenamAnakCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanBukuNikah: List<String>.from(map?['scan_buku_nikah'] ?? []),
      scanKtpIstri: List<String>.from(map?['scan_ktp_istri'] ?? []),
      scanKtpSuami: List<String>.from(map?['scan_ktp_suami'] ?? []),
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
      'scan_buku_nikah': scanBukuNikah ?? [],
      'scan_ktp_istri': scanKtpIstri ?? [],
      'scan_ktp_suami': scanKtpSuami ?? [],
      'scan_ket_lahir': scanKetLahir ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update penambahan anak
class PenamAnakUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanBukuNikah;
  final List<String>? scanKtpIstri;
  final List<String>? scanKtpSuami;
  final List<String>? scanKetLahir;
  final List<String>? opsiPengambilan;

  PenamAnakUpdateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanBukuNikah,
    this.scanKtpIstri,
    this.scanKtpSuami,
    this.scanKetLahir,
    this.opsiPengambilan,
  });

  factory PenamAnakUpdateErr.fromMap(Map<String, dynamic>? map) {
    return PenamAnakUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanBukuNikah: List<String>.from(map?['scan_buku_nikah'] ?? []),
      scanKtpIstri: List<String>.from(map?['scan_ktp_istri'] ?? []),
      scanKtpSuami: List<String>.from(map?['scan_ktp_suami'] ?? []),
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
      'scan_buku_nikah': scanBukuNikah ?? [],
      'scan_ktp_istri': scanKtpIstri ?? [],
      'scan_ktp_suami': scanKtpSuami ?? [],
      'scan_ket_lahir': scanKetLahir ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
