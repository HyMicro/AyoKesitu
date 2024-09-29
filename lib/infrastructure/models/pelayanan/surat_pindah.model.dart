import 'dart:convert';

import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model surat pindah
class SuratPindah {
  final int? id;
  final String? nama;
  final String? noKk;
  final String? nik;
  final String? alamatLengkap;
  final String? email;
  final String? noWa;
  final String? kk;
  final String? ktp;
  final String? suratPernyataan;
  final String? status;
  final String? catatanTolak;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SuratPindah({
    this.id,
    this.nama,
    this.noKk,
    this.nik,
    this.alamatLengkap,
    this.email,
    this.noWa,
    this.kk,
    this.ktp,
    this.suratPernyataan,
    this.status,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory SuratPindah.fromMap(Map<String, dynamic> map) {
    return SuratPindah(
      id: map["id"],
      nama: map["nama"],
      noKk: map["no_kk"],
      nik: map["nik"],
      alamatLengkap: map["alamat_lengkap"],
      email: map["email"],
      noWa: map["no_wa"],
      kk: map["kk"],
      ktp: map["ktp"],
      suratPernyataan: map["surat_pernyataan"],
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
      "nama": nama,
      "no_kk": noKk,
      "nik": nik,
      "alamat_lengkap": alamatLengkap,
      "email": email,
      "no_wa": noWa,
      "kk": kk,
      "ktp": ktp,
      "surat_pernyataan": suratPernyataan,
      "status": status,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
    };
  }

  // convert nik to list string
  List<String> listNIK() {
    return nik != null ? List<String>.from(json.decode(nik!)) : [];
  }
}

// request detail surat pindah
class SuratPindahDetailReq {
  final String? id;

  SuratPindahDetailReq({
    this.id,
  });
}

// request create surat pindah
class SuratPindahCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SuratPindahCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update surat pindah
class SuratPindahUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  SuratPindahUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create surat pindah
class SuratPindahCreateErr {
  final List<String>? noKk;
  final Map<String, List<String>>? niks;
  final List<String>? nama;
  final List<String>? alamat;
  final List<String>? opsiPengambilan;

  SuratPindahCreateErr({
    this.noKk,
    this.nama,
    this.niks,
    this.alamat,
    this.opsiPengambilan,
  });

  factory SuratPindahCreateErr.fromMap(Map<String, dynamic>? map) {
    // dyanmic nik errors
    Map<String, List<String>> niks = {};
    map?.forEach((key, value) {
      if (key.startsWith('nik.')) {
        final nikKey = key.split('.').last;
        niks[nikKey] = List<String>.from(value);
      }
    });

    return SuratPindahCreateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      niks: niks,
      alamat: List<String>.from(map?['alamat_lengkap'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_surat pindah': noKk ?? [],
      'nama': nama ?? [],
      'niks': niks ?? {},
      'alamat': alamat ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update surat pindah
class SuratPindahUpdateErr {
  final List<String>? noKk;
  final Map<String, List<String>>? niks;
  final List<String>? nama;
  final List<String>? alamat;
  final List<String>? opsiPengambilan;

  SuratPindahUpdateErr({
    this.noKk,
    this.nama,
    this.niks,
    this.alamat,
    this.opsiPengambilan,
  });

  factory SuratPindahUpdateErr.fromMap(Map<String, dynamic>? map) {
    // dyanmic nik errors
    Map<String, List<String>> niks = {};
    map?.forEach((key, value) {
      if (key.startsWith('nik.')) {
        final nikKey = key.split('.').last;
        niks[nikKey] = List<String>.from(value);
      }
    });

    return SuratPindahUpdateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      niks: niks,
      alamat: List<String>.from(map?['alamat_lengkap'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_surat pindah': noKk ?? [],
      'nama': nama ?? [],
      'niks': niks ?? {},
      'alamat': alamat ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
