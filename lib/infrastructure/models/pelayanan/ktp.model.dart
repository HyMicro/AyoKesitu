import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model kartu tanda penduduk
class Ktp {
  final int? id;
  final String? noKk;
  final String? nik;
  final String? nama;
  final String? alamat;
  final String? alasan;
  final String? scanKk;
  final String? noWa;
  final String? email;
  final String? status;
  final dynamic catatan;
  final dynamic fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Ktp({
    this.id,
    this.noKk,
    this.nik,
    this.nama,
    this.alamat,
    this.alasan,
    this.scanKk,
    this.noWa,
    this.email,
    this.status,
    this.catatan,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory Ktp.fromMap(Map<String, dynamic> map) {
    return Ktp(
      id: map["id"],
      noKk: map["no_kk"],
      nik: map["nik"],
      nama: map["nama"],
      alamat: map["alamat"],
      alasan: map["alasan"],
      scanKk: map["scan_kk"],
      noWa: map["no_wa"],
      email: map["email"],
      status: map["status"],
      catatan: map["catatan"],
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
      "alamat": alamat,
      "alasan": alasan,
      "scan_kk": scanKk,
      "no_wa": noWa,
      "email": email,
      "status": status,
      "catatan": catatan,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt,
      "updated_at": updatedAt,
    };
  }
}

// request detail kartu tanda penduduk
class KtpDetailReq {
  final String? id;

  KtpDetailReq({
    this.id,
  });
}

// request create kartu tanda penduduk
class KtpCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KtpCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update kartu tanda penduduk
class KtpUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KtpUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create kartu tanda penduduk
class KtpCreateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? alamat;
  final List<String>? alasan;
  final List<String>? scanKk;
  final List<String>? status;
  final List<String>? opsiPengambilan;

  KtpCreateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.alamat,
    this.alasan,
    this.scanKk,
    this.status,
    this.opsiPengambilan,
  });

  factory KtpCreateErr.fromMap(Map<String, dynamic>? map) {
    return KtpCreateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alamat: List<String>.from(map?['alamat'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      status: List<String>.from(map?['status'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'alamat': alamat ?? [],
      'alasan': alasan ?? [],
      'scan_kk': scanKk ?? [],
      'status': status ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update kartu tanda penduduk
class KtpUpdateErr {
  final List<String>? noKk;
  final List<String>? nik;
  final List<String>? nama;
  final List<String>? alamat;
  final List<String>? alasan;
  final List<String>? scanKk;
  final List<String>? status;
  final List<String>? opsiPengambilan;

  KtpUpdateErr({
    this.noKk,
    this.nik,
    this.nama,
    this.alamat,
    this.alasan,
    this.scanKk,
    this.status,
    this.opsiPengambilan,
  });

  factory KtpUpdateErr.fromMap(Map<String, dynamic>? map) {
    return KtpUpdateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alamat: List<String>.from(map?['alamat'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      scanKk: List<String>.from(map?['scan_kk'] ?? []),
      status: List<String>.from(map?['status'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'alamat': alamat ?? [],
      'alasan': alasan ?? [],
      'scan_kk': scanKk ?? [],
      'status': status ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
