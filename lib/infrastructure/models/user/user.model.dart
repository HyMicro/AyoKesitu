// model user
class User {
  final int id;
  final String noKk;
  final String nik;
  final String nama;
  final String noWa;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.noKk,
    required this.nik,
    required this.nama,
    required this.noWa,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      noKk: map['no_kk'],
      nik: map['nik'],
      nama: map['nama'],
      noWa: map['no_wa'],
      email: map['email'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'no_kk': noKk,
      'nik': nik,
      'nama': nama,
      'no_wa': noWa,
      'email': email,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}

// request update user
class UserUpdateReq {
  final String? nik;
  final String? noKK;
  final String? name;
  final String? email;
  final String? phone;

  UserUpdateReq({
    this.nik,
    this.noKK,
    this.name,
    this.email,
    this.phone,
  });

  factory UserUpdateReq.fromMap(Map<String, dynamic> map) {
    return UserUpdateReq(
      nik: map["nik"],
      noKK: map["no_kk"],
      name: map["name"],
      email: map["email"],
      phone: map["phone"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "nik": nik,
      "no_kk": noKK,
      "name": name,
      "email": email,
      "phone": phone,
    };
  }
}

// error update user
class UserUpdateErr {
  final List<String>? nik;
  final List<String>? noKk;
  final List<String>? name;
  final List<String>? email;
  final List<String>? phone;

  UserUpdateErr({
    this.nik,
    this.noKk,
    this.name,
    this.email,
    this.phone,
  });

  factory UserUpdateErr.fromMap(Map<String, dynamic>? map) {
    return UserUpdateErr(
      nik: List<String>.from(map?['nik'] ?? []),
      noKk: List<String>.from(map?['no_kk'] ?? []),
      name: List<String>.from(map?['name'] ?? []),
      email: List<String>.from(map?['email'] ?? []),
      phone: List<String>.from(map?['phone'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nik': nik ?? [],
      'no_kk': noKk ?? [],
      'name': name ?? [],
      'email': email ?? [],
      'phone': phone ?? [],
    };
  }
}
