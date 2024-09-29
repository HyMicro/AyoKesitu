import 'dart:convert';

// pengajuan model
class Pengajuan<D> {
  final int? id;
  final String? nama;
  final String? jenis;
  final String? status;
  final D? detail;
  final DateTime createdAt;

  const Pengajuan({
    this.id,
    this.nama,
    this.jenis,
    this.status,
    this.detail,
    required this.createdAt,
  });

  factory Pengajuan.fromMap(Map<String, dynamic> map, {Function(dynamic)? detailFrom}) {
    return Pengajuan(
      id: map["id"],
      nama: map["nama"],
      jenis: map["jenis"],
      status: map["status"],
      detail: detailFrom == null ? null : detailFrom(map["detail"]),
      createdAt: DateTime.parse(map["created_at"]),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nama": nama,
      "jenis": jenis,
      "status": status,
      "detail": json.encode(detail as D),
      "created_at": createdAt.toIso8601String(),
    };
  }
}

// pengajuan request
class PengajuanReq {
  final String perpage;

  PengajuanReq({
    required this.perpage,
  });

  factory PengajuanReq.fromMap(Map<String, dynamic> map) {
    return PengajuanReq(
      perpage: map['perpage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'perpage': perpage,
    };
  }
}

// pengajuan error
class PengajuanErr {
  final List<String>? perpage;

  PengajuanErr({
    this.perpage,
  });

  factory PengajuanErr.fromMap(Map<String, dynamic>? map) {
    return PengajuanErr(
      perpage: List<String>.from(map?['perpage'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'perpage': perpage ?? [],
    };
  }
}
