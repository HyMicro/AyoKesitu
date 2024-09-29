// model profile
class Profile {
  final String nikHeadFamily;
  final String numberKk;
  final String childFullName;
  final String name;
  final String email;
  final String phone;

  const Profile({
    required this.nikHeadFamily,
    required this.numberKk,
    required this.childFullName,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      nikHeadFamily: map["nikHeadFamily"],
      numberKk: map["numberKk"],
      childFullName: map["childFullName"],
      name: map["name"],
      email: map["email"],
      phone: map["phone"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "nikHeadFamily": nikHeadFamily,
      "numberKk": numberKk,
      "childFullName": childFullName,
      "name": name,
      "email": email,
      "phone": phone,
    };
  }
}
