import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model kartu identitas anak
class Kia {
  final int? id;
  final String? nama;
  final String? noKk;
  final String? nikAnak;
  final String? noAktaLahir;
  final String? pasFoto;
  final String? alasan;
  final String? noWa;
  final String? email;
  final String? status;
  final dynamic catatanTolak;
  final dynamic fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Kia({
    this.id,
    this.nama,
    this.noKk,
    this.nikAnak,
    this.noAktaLahir,
    this.pasFoto,
    this.alasan,
    this.noWa,
    this.email,
    this.status,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory Kia.fromMap(Map<String, dynamic> map) {
    return Kia(
      id: map["id"],
      nama: map["nama"],
      noKk: map["no_kk"],
      nikAnak: map["nik_anak"],
      noAktaLahir: map["no_akta_lahir"],
      pasFoto: map["pas_foto"],
      alasan: map["alasan"],
      noWa: map["no_wa"],
      email: map["email"],
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
      "nik_anak": nikAnak,
      "no_akta_lahir": noAktaLahir,
      "pas_foto": pasFoto,
      "alasan": alasan,
      "no_wa": noWa,
      "email": email,
      "status": status,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
    };
  }
}

// request detail kartu identitas anak
class KiaDetailReq {
  final String? id;

  KiaDetailReq({
    this.id,
  });
}

// request create kartu identitas anak
class KiaCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KiaCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update kartu identitas anak
class KiaUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KiaUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create kartu identitas anak
class KiaCreateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nikAnak;
  final List<String>? noAktaLahir;
  final List<String>? alasan;
  final List<String>? pasFoto;
  final List<String>? opsiPengambilan;

  KiaCreateErr({
    this.nama,
    this.noKk,
    this.nikAnak,
    this.noAktaLahir,
    this.pasFoto,
    this.alasan,
    this.opsiPengambilan,
  });

  factory KiaCreateErr.fromMap(Map<String, dynamic>? map) {
    return KiaCreateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nikAnak: List<String>.from(map?['nik_anak'] ?? []),
      noAktaLahir: List<String>.from(map?['no_akta_lahir'] ?? []),
      pasFoto: List<String>.from(map?['pas_foto'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik_anak': nikAnak ?? [],
      'no_akta_lahir': noAktaLahir ?? [],
      'pas_foto': pasFoto ?? [],
      'alasan': alasan ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}

// error update kartu identitas anak
class KiaUpdateErr {
  final List<String>? nama;
  final List<String>? noKk;
  final List<String>? nikAnak;
  final List<String>? noAktaLahir;
  final List<String>? alasan;
  final List<String>? pasFoto;
  final List<String>? opsiPengambilan;

  KiaUpdateErr({
    this.nama,
    this.noKk,
    this.nikAnak,
    this.noAktaLahir,
    this.pasFoto,
    this.alasan,
    this.opsiPengambilan,
  });

  factory KiaUpdateErr.fromMap(Map<String, dynamic>? map) {
    return KiaUpdateErr(
      nama: List<String>.from(map?['nama'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nikAnak: List<String>.from(map?['nik_anak'] ?? []),
      noAktaLahir: List<String>.from(map?['no_akta_lahir'] ?? []),
      pasFoto: List<String>.from(map?['pas_foto'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama ?? [],
      'no_kk': noKk ?? [],
      'nik_anak': nikAnak ?? [],
      'no_akta_lahir': noAktaLahir ?? [],
      'pas_foto': pasFoto ?? [],
      'alasan': alasan ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
    };
  }
}
