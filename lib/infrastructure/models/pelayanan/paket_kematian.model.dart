import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model paket kematian
class PaketKematian {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? scanKk;
  final String? scanKetKematian;
  final String? scanKtpPelapor;
  final String? status;
  final String? catatanTolak;
  final String? email;
  final String? noWa;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  PaketKematian({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.scanKetKematian,
    this.scanKtpPelapor,
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

  factory PaketKematian.fromMap(Map<String, dynamic> map) {
    return PaketKematian(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      scanKk: map["scan_kk"],
      scanKetKematian: map["scan_ket_kematian"],
      scanKtpPelapor: map["scan_ktp_pelapor"],
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

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "no_kk": noKk,
      "nik": nik,
      "nama": nama,
      "scan_kk": scanKk,
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

// request detail paket kematian
class PaketKemDetailReq {
  final String? id;

  PaketKemDetailReq({
    this.id,
  });
}

// request create paket kematian
class PaketKemCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  PaketKemCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update paket kematian
class PaketKemUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  PaketKemUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create paket kematian
class PaketKemCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanKetKematian;
  final List<String>? scanKtpPelapor;
  final List<String>? opsiPengambilan;

  PaketKemCreateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanKetKematian,
    this.scanKtpPelapor,
    this.opsiPengambilan,
  });

  factory PaketKemCreateErr.fromMap(Map<String, dynamic>? map) {
    return PaketKemCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKetKematian: List<String>.from(map?['scan_ket_kematian'] ?? []),
      scanKtpPelapor: List<String>.from(map?['scan_ktp_pelapor'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ket_kematian': scanKetKematian ?? [],
      'scan_ktp_pelapor': scanKtpPelapor ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update paket kematian
class PaketKemUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? scanKk;
  final List<String>? scanKetKematian;
  final List<String>? scanKtpPelapor;
  final List<String>? opsiPengambilan;

  PaketKemUpdateErr({
    this.nama,
    this.noKk,
    this.nik,
    this.scanKk,
    this.scanKetKematian,
    this.scanKtpPelapor,
    this.opsiPengambilan,
  });

  factory PaketKemUpdateErr.fromMap(Map<String, dynamic>? map) {
    return PaketKemUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKetKematian: List<String>.from(map?['scan_ket_kematian'] ?? []),
      scanKtpPelapor: List<String>.from(map?['scan_ktp_pelapor'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ket_kematian': scanKetKematian ?? [],
      'scan_ktp_pelapor': scanKtpPelapor ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
