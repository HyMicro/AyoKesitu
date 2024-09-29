// https://pub.dev/packages/envied

import 'package:envied/envied.dart';

part 'storage.env.g.dart';

@Envied(path: '.env')
abstract class EnvStorage {
  @EnviedField(varName: 'USER_SECURE', obfuscate: true)
  static String userSecure = _EnvStorage.userSecure;
  @EnviedField(varName: 'BEARER_SECURE', obfuscate: true)
  static String bearerSecure = _EnvStorage.bearerSecure;
  @EnviedField(varName: 'FORGOT_TOKEN', obfuscate: true)
  static String forgotToken = _EnvStorage.forgotToken;
}
