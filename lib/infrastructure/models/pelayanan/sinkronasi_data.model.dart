import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model sinkronasi data
class SinkronasiData {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? alasan;
  final String? scanKk;
  final String? scanKtp;
  final String? email;
  final String? noWa;
  final String? status;
  final dynamic catatanTolak;
  final dynamic fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SinkronasiData({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.alasan,
    this.scanKk,
    this.scanKtp,
    this.email,
    this.noWa,
    this.status,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory SinkronasiData.fromMap(Map<String, dynamic> map) {
    return SinkronasiData(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      alasan: map["alasan"],
      scanKk: map["scan_kk"],
      scanKtp: map["scan_ktp"],
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
      "alasan": alasan,
      "scan_kk": scanKk,
      "scan_ktp": scanKtp,
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

// request detail sinkronasi data
class SinkronDataDetailReq {
  final String? id;

  SinkronDataDetailReq({
    this.id,
  });
}

// request create sinkronasi data
class SinkronDataCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SinkronDataCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update sinkronasi data
class SinkronDataUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SinkronDataUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create sinkronasi data
class SinkronDataCreateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? alasan;
  final List<String>? scanKk;
  final List<String>? scanKtp;
  final List<String>? opsiPengambilan;

  SinkronDataCreateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.alasan,
    this.scanKk,
    this.scanKtp,
    this.opsiPengambilan,
  });

  factory SinkronDataCreateErr.fromMap(Map<String, dynamic>? map) {
    return SinkronDataCreateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'alasan': alasan ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ktp': scanKtp ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update sinkronasi data
class SinkronDataUpdateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? alasan;
  final List<String>? scanKk;
  final List<String>? scanKtp;
  final List<String>? opsiPengambilan;

  SinkronDataUpdateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.alasan,
    this.scanKk,
    this.scanKtp,
    this.opsiPengambilan,
  });

  factory SinkronDataUpdateErr.fromMap(Map<String, dynamic>? map) {
    return SinkronDataUpdateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      scanKtp: List<String>.from(map?['scan_ktp'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'alasan': alasan ?? [],
      'scan_kk': scanKk ?? [],
      'scan_ktp': scanKtp ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
