// https://pub.dev/packages/envied

import 'package:envied/envied.dart';

part 'restapi.env.g.dart';

@Envied(path: '.env')
abstract class EnvRestapi {
  @EnviedField(varName: 'URL_DEV')
  static const String URL_DEV = _EnvRestapi.URL_DEV;

  @EnviedField(varName: 'URL_STAGING')
  static const String URL_STAGING = _EnvRestapi.URL_STAGING;

  @EnviedField(varName: 'URL_PROD')
  static const String URL_PROD = _EnvRestapi.URL_PROD;
}
