import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model surat keterangan
class Suket {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? scanKk;
  final String? pasFoto;
  final String? email;
  final String? noWa;
  final String? status;
  final dynamic catatanTolak;
  final dynamic fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Suket({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.pasFoto,
    this.email,
    this.noWa,
    this.status,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory Suket.fromMap(Map<String, dynamic> map) {
    return Suket(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      scanKk: map["scan_kk"],
      pasFoto: map["pas_foto"],
      email: map["email"],
      noWa: map["no_wa"],
      status: map["status"],
      catatanTolak: map["catatan_tolak"],
      fileDokumen: map["file_dokumen"],
      opsiPengambilan: map["opsi_pengambilan"],
      createdAt: map["created_at"] == null ? null : DateTime.parse(map["created_at"]),
      updatedAt: map["updated_at"] == null ? null : DateTime.parse(map["updated_at"]),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "no_kk": noKk,
      "nik": nik,
      "nama": nama,
      "scan_kk": scanKk,
      "pas_foto": pasFoto,
      "email": email,
      "no_wa": noWa,
      "status": status,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
    };
  }
}

// request detail surat keterangan
class SuketDetailReq {
  final String? id;

  SuketDetailReq({
    this.id,
  });
}

// request create surat keterangan
class SuketCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SuketCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update surat keterangan
class SuketUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SuketUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create surat keterangan
class SuketCreateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? scanKk;
  final List<String>? pasFoto;
  final List<String>? opsiPengambilan;

  SuketCreateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.pasFoto,
    this.opsiPengambilan,
  });

  factory SuketCreateErr.fromMap(Map<String, dynamic>? map) {
    return SuketCreateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      pasFoto: List<String>.from(map?['pas_foto'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'scan_kk': scanKk ?? [],
      'pas_foto': pasFoto ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update surat keterangan
class SuketUpdateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? scanKk;
  final List<String>? pasFoto;
  final List<String>? opsiPengambilan;

  SuketUpdateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.scanKk,
    this.pasFoto,
    this.opsiPengambilan,
  });

  factory SuketUpdateErr.fromMap(Map<String, dynamic>? map) {
    return SuketUpdateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      pasFoto: List<String>.from(map?['pas_foto'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'scan_kk': scanKk ?? [],
      'pas_foto': pasFoto ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
