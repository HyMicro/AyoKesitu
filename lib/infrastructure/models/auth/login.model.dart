// request login
class LoginReq {
  final String? noKK;
  final String? password;

  LoginReq({
    this.noKK,
    this.password,
  });

  factory LoginReq.fromMap(Map<String, dynamic> map) {
    return LoginReq(
      noKK: map["no_kk"],
      password: map["password"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "no_kk": noKK,
      "password": password,
    };
  }
}

// login error
class LoginErr {
  final List<String>? noKk;
  final List<String>? password;

  LoginErr({
    this.noKk,
    this.password,
  });

  factory LoginErr.fromMap(Map<String, dynamic>? map) {
    return LoginErr(
      noKk: List<String>.from(map?['no_kk'] ?? []),
      password: List<String>.from(map?['password'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no_kk': noKk ?? [],
      'password': password ?? [],
    };
  }
}
