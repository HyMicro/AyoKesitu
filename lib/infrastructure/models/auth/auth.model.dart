// model auth
class Auth {
  final String apiToken;

  Auth({
    required this.apiToken,
  });

  factory Auth.fromMap(Map<String, dynamic>? map) {
    return Auth(
      apiToken: map?["api-token"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "api-token": apiToken,
    };
  }
}
