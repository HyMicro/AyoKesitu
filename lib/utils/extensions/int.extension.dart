extension IntNulExtensions on int? {
  /// check status code 200-299
  bool get isOk => this != null ? this! >= 200 && this! <= 299 : false;
}

extension IntExtensions on int {
  /// check status code 200-299
  bool get isOk => this >= 200 && this <= 299;
}
