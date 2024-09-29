// model forgot password
class ForgotPass {
  final String token;

  ForgotPass({
    required this.token,
  });

  factory ForgotPass.fromMap(Map<String, dynamic> map) {
    return ForgotPass(
      token: map["token"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "token": token,
    };
  }
}

// request forgot password
class ForgotPassReq {
  final String email;

  ForgotPassReq({
    required this.email,
  });

  factory ForgotPassReq.fromMap(Map<String, dynamic> map) {
    return ForgotPassReq(
      email: map["email"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "email": email,
    };
  }
}

// request reset password
class ResetPassReq {
  final String? password;
  final String? confirmPassword;
  final String token;

  ResetPassReq({
    this.password,
    this.confirmPassword,
    required this.token,
  });

  factory ResetPassReq.fromMap(Map<String, dynamic> map) {
    return ResetPassReq(
      password: map["password"],
      confirmPassword: map["confirm_password"],
      token: map["token"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "password": password,
      "confirm_password": confirmPassword,
      "token": token,
    };
  }
}

// forgot password error
class ForgotPassErr {
  final List<String>? email;

  ForgotPassErr({
    this.email,
  });

  factory ForgotPassErr.fromMap(Map<String, dynamic>? map) {
    return ForgotPassErr(
      email: List<String>.from(map?['email'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email ?? [],
    };
  }
}

// reset password error
class ResetPassErr {
  final List<String>? password;
  final List<String>? confirmPassword;

  ResetPassErr({
    this.password,
    this.confirmPassword,
  });

  factory ResetPassErr.fromMap(Map<String, dynamic>? map) {
    return ResetPassErr(
      password: List<String>.from(map?['password'] ?? []),
      confirmPassword: List<String>.from(map?['confirm_password'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'password': password ?? [],
      'confirm_password': confirmPassword ?? [],
    };
  }
}
