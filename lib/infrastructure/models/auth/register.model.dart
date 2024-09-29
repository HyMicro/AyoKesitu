// request register
class RegisterReq {
  final String? nama;
  final String? nik;
  final String? noKk;
  final String? password;
  final String? confirmPassword;
  final String? noWa;
  final String? email;

  RegisterReq({
    this.nama,
    this.nik,
    this.noKk,
    this.password,
    this.confirmPassword,
    this.noWa,
    this.email,
  });

  factory RegisterReq.fromMap(Map<String, dynamic>? map) {
    return RegisterReq(
      nama: map?["nama"],
      nik: map?["nik"],
      noKk: map?["no_kk"],
      password: map?["password"],
      confirmPassword: map?["confirm_password"],
      noWa: map?["no_wa"],
      email: map?["email"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "nama": nama,
      "nik": nik,
      "no_kk": noKk,
      "password": password,
      "confirm_password": confirmPassword,
      "no_wa": noWa,
      "email": email,
    };
  }
}

// register error
class RegisterErr {
  final List<String>? noKk;
  final List<String>? nama;
  final List<String>? nik;
  final List<String>? password;
  final List<String>? confPassword;
  final List<String>? email;
  final List<String>? noWa;

  RegisterErr({
    this.noKk,
    this.nik,
    this.nama,
    this.password,
    this.confPassword,
    this.email,
    this.noWa,
  });

  factory RegisterErr.fromMap(Map<String, dynamic>? map) {
    return RegisterErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      nik: List<String>.from(map?['nik'] ?? []),
      nama: List<String>.from(map?['nama'] ?? []),
      password: List<String>.from(map?['password'] ?? []),
      confPassword: List<String>.from(map?['confirm_password'] ?? []),
      email: List<String>.from(map?['email'] ?? []),
      noWa: List<String>.from(map?['no_wa'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'nik': nik ?? [],
      'nama': nama ?? [],
      'password': password ?? [],
      'confirm_password': confPassword ?? [],
      'email': email ?? [],
      'no_wa': noWa ?? [],
    };
  }
}
