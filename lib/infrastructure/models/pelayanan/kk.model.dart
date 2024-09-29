import 'package:dio/dio.dart' as pdio;
import 'package:get/get.dart' as pget;

// model kk
class Kk {
  final int? id;
  final String? alasan;
  final String? nama;
  final String? noKk;
  final String? email;
  final String? noWa;
  final String? status;
  final String? kartuKeluarga;
  final String? suratKetBidan;
  final String? bukuNikah;
  final String? aktaKelahiran;
  final String? ijazah;
  final String? suratKetPekerjaan;
  final String? sptjm;
  final String? aktaCerai;
  final String? blankoF108;
  final String? ktp;
  final String? skdWni;
  final String? blankoF101;
  final String? skpWni;
  final String? pindahLuarKota;
  final String? suratKetPolisi;
  final String? catatan;
  final String? catatanTolak;
  final String? fileDokumen;
  final String? opsiPengambilan;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Kk({
    this.id,
    this.alasan,
    this.nama,
    this.noKk,
    this.email,
    this.noWa,
    this.status,
    this.kartuKeluarga,
    this.suratKetBidan,
    this.bukuNikah,
    this.aktaKelahiran,
    this.ijazah,
    this.suratKetPekerjaan,
    this.sptjm,
    this.aktaCerai,
    this.blankoF108,
    this.ktp,
    this.skdWni,
    this.blankoF101,
    this.skpWni,
    this.pindahLuarKota,
    this.suratKetPolisi,
    this.catatan,
    this.catatanTolak,
    this.fileDokumen,
    this.opsiPengambilan,
    this.createdAt,
    this.updatedAt,
  });

  factory Kk.fromMap(Map<String, dynamic> map) {
    return Kk(
      id: map["id"],
      alasan: map["alasan"],
      nama: map["nama"],
      noKk: map["no_kk"],
      email: map["email"],
      noWa: map["no_wa"],
      status: map["status"],
      kartuKeluarga: map["kartu_keluarga"],
      suratKetBidan: map["surat_ket_bidan"],
      bukuNikah: map["buku_nikah"],
      aktaKelahiran: map["akta_kelahiran"],
      ijazah: map["ijazah"],
      suratKetPekerjaan: map["surat_ket_pekerjaan"],
      sptjm: map["sptjm"],
      aktaCerai: map["akta_cerai"],
      blankoF108: map["blanko_f1-08"],
      ktp: map["ktp"],
      skdWni: map["skd_wni"],
      blankoF101: map["blanko_f1-01"],
      skpWni: map["skp_wni"],
      pindahLuarKota: map["pindah_luar_kota"],
      suratKetPolisi: map["surat_ket_polisi"],
      catatan: map["catatan"],
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
      "alasan": alasan,
      "nama": nama,
      "no_kk": noKk,
      "email": email,
      "no_wa": noWa,
      "status": status,
      "kartu_keluarga": kartuKeluarga,
      "surat_ket_bidan": suratKetBidan,
      "buku_nikah": bukuNikah,
      "akta_kelahiran": aktaKelahiran,
      "ijazah": ijazah,
      "surat_ket_pekerjaan": suratKetPekerjaan,
      "sptjm": sptjm,
      "akta_cerai": aktaCerai,
      "blanko_f1-08": blankoF108,
      "ktp": ktp,
      "skd_wni": skdWni,
      "blanko_f1-01": blankoF101,
      "skp_wni": skpWni,
      "pindah_luar_kota": pindahLuarKota,
      "surat_ket_polisi": suratKetPolisi,
      "catatan": catatan,
      "catatan_tolak": catatanTolak,
      "file_dokumen": fileDokumen,
      "opsi_pengambilan": opsiPengambilan,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
    };
  }
}

// request detail kartu keluarga
class KkDetailReq {
  final String? id;

  KkDetailReq({
    this.id,
  });
}

// request create kartu keluarga
class KkCreateReq {
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KkCreateReq({
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// request update kartu keluarga
class KkUpdateReq {
  final String? id;
  final pget.FormData? formGet;
  final pdio.FormData? formDio;
  final Function(double)? getProg;
  final Function(int, int)? dioRecvProg;
  final Function(int, int)? dioSendProg;

  KkUpdateReq({
    this.id,
    this.formGet,
    this.formDio,
    this.getProg,
    this.dioRecvProg,
    this.dioSendProg,
  });
}

// error create kartu keluarga
class KkCreateErr {
  final List<String>? noKk;
  final List<String>? nama;
  final List<String>? alasan;
  final List<String>? catatan;
  final List<String>? opsiPengambilan;
  final List<String>? kk;
  final List<String>? ketBidan;
  final List<String>? bukuNikah;
  final List<String>? aktaKel;
  final List<String>? ijazah;
  final List<String>? ketKerja;
  final List<String>? sptjm;
  final List<String>? aktaCerai;
  final List<String>? blankoF108;
  final List<String>? skdWni;
  final List<String>? blankoF101;
  final List<String>? skpWni;
  final List<String>? pindahLuarKota;
  final List<String>? ktp;
  final List<String>? skck;

  KkCreateErr({
    this.noKk,
    this.nama,
    this.alasan,
    this.catatan,
    this.opsiPengambilan,
    this.kk,
    this.ketBidan,
    this.bukuNikah,
    this.aktaKel,
    this.ijazah,
    this.ketKerja,
    this.sptjm,
    this.aktaCerai,
    this.blankoF108,
    this.skdWni,
    this.blankoF101,
    this.skpWni,
    this.pindahLuarKota,
    this.ktp,
    this.skck,
  });

  factory KkCreateErr.fromMap(Map<String, dynamic>? map) {
    return KkCreateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      catatan: List<String>.from(map?['catatan'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
      kk: List<String>.from(map?['kartu_keluarga'] ?? []),
      ketBidan: List<String>.from(map?['surat_ket_bidan'] ?? []),
      bukuNikah: List<String>.from(map?['buku_nikah'] ?? []),
      aktaKel: List<String>.from(map?['akta_kelahiran'] ?? []),
      ijazah: List<String>.from(map?['ijazah'] ?? []),
      ketKerja: List<String>.from(map?['surat_ket_pekerjaan'] ?? []),
      sptjm: List<String>.from(map?['sptjm'] ?? []),
      aktaCerai: List<String>.from(map?['akta_cerai'] ?? []),
      blankoF108: List<String>.from(map?['blanko_f1-08'] ?? []),
      skdWni: List<String>.from(map?['skd_wni'] ?? []),
      blankoF101: List<String>.from(map?['blanko_f1-01'] ?? []),
      skpWni: List<String>.from(map?['skp_wni'] ?? []),
      pindahLuarKota: List<String>.from(map?['pindah_luar_kota'] ?? []),
      ktp: List<String>.from(map?['ktp'] ?? []),
      skck: List<String>.from(map?['surat_ket_polisi'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nama': nama ?? [],
      'alasan': alasan ?? [],
      'catatan': catatan ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
      'kartu_keluarga': kk ?? [],
      'surat_ket_bidan': ketBidan ?? [],
      'buku_nikah': bukuNikah ?? [],
      'akta_kelahiran': aktaKel ?? [],
      'ijazah': ijazah ?? [],
      'surat_ket_pekerjaan': ketKerja ?? [],
      'sptjm': sptjm ?? [],
      'akta_cerai': aktaCerai ?? [],
      'blanko_f1-08': blankoF108 ?? [],
      'skd_wni': skdWni ?? [],
      'blanko_f1-01': blankoF101 ?? [],
      'skp_wni': skpWni ?? [],
      'pindah_luar_kota': pindahLuarKota ?? [],
      'ktp': ktp ?? [],
      'surat_ket_polisi': skck ?? [],
    };
  }
}

// error update kartu keluarga
class KkUpdateErr {
  final List<String>? noKk;
  final List<String>? nama;
  final List<String>? alasan;
  final List<String>? catatan;
  final List<String>? opsiPengambilan;
  final List<String>? kk;
  final List<String>? ketBidan;
  final List<String>? bukuNikah;
  final List<String>? aktaKel;
  final List<String>? ijazah;
  final List<String>? ketKerja;
  final List<String>? sptjm;
  final List<String>? aktaCerai;
  final List<String>? blankoF108;
  final List<String>? skdWni;
  final List<String>? blankoF101;
  final List<String>? skpWni;
  final List<String>? pindahLuarKota;
  final List<String>? ktp;
  final List<String>? skck;

  KkUpdateErr({
    this.noKk,
    this.nama,
    this.alasan,
    this.catatan,
    this.opsiPengambilan,
    this.kk,
    this.ketBidan,
    this.bukuNikah,
    this.aktaKel,
    this.ijazah,
    this.ketKerja,
    this.sptjm,
    this.aktaCerai,
    this.blankoF108,
    this.skdWni,
    this.blankoF101,
    this.skpWni,
    this.pindahLuarKota,
    this.ktp,
    this.skck,
  });

  factory KkUpdateErr.fromMap(Map<String, dynamic>? map) {
    return KkUpdateErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      alasan: List<String>.from(map?['alasan'] ?? []),
      catatan: List<String>.from(map?['catatan'] ?? []),
      opsiPengambilan: List<String>.from(map?['opsi_pengambilan'] ?? []),
      kk: List<String>.from(map?['kartu_keluarga'] ?? []),
      ketBidan: List<String>.from(map?['surat_ket_bidan'] ?? []),
      bukuNikah: List<String>.from(map?['buku_nikah'] ?? []),
      aktaKel: List<String>.from(map?['akta_kelahiran'] ?? []),
      ijazah: List<String>.from(map?['ijazah'] ?? []),
      ketKerja: List<String>.from(map?['surat_ket_pekerjaan'] ?? []),
      sptjm: List<String>.from(map?['sptjm'] ?? []),
      aktaCerai: List<String>.from(map?['akta_cerai'] ?? []),
      blankoF108: List<String>.from(map?['blanko_f1-08'] ?? []),
      skdWni: List<String>.from(map?['skd_wni'] ?? []),
      blankoF101: List<String>.from(map?['blanko_f1-01'] ?? []),
      skpWni: List<String>.from(map?['skp_wni'] ?? []),
      pindahLuarKota: List<String>.from(map?['pindah_luar_kota'] ?? []),
      ktp: List<String>.from(map?['ktp'] ?? []),
      skck: List<String>.from(map?['surat_ket_polisi'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nama': nama ?? [],
      'alasan': alasan ?? [],
      'catatan': catatan ?? [],
      'opsi_pengambilan': opsiPengambilan ?? [],
      'kartu_keluarga': kk ?? [],
      'surat_ket_bidan': ketBidan ?? [],
      'buku_nikah': bukuNikah ?? [],
      'akta_kelahiran': aktaKel ?? [],
      'ijazah': ijazah ?? [],
      'surat_ket_pekerjaan': ketKerja ?? [],
      'sptjm': sptjm ?? [],
      'akta_cerai': aktaCerai ?? [],
      'blanko_f1-08': blankoF108 ?? [],
      'skd_wni': skdWni ?? [],
      'blanko_f1-01': blankoF101 ?? [],
      'skp_wni': skpWni ?? [],
      'pindah_luar_kota': pindahLuarKota ?? [],
      'ktp': ktp ?? [],
      'surat_ket_polisi': skck ?? [],
    };
  }
}
