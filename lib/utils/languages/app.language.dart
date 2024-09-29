import 'enus.language.dart';
import 'indo.language.dart';

class AppLanguage {
  static Map<String, Map<String, String>> translations = {
    'en_US': Locales.enUS,
    'id_ID': Locales.indo,
  };
}

class Locales {
  static const enUS = {
    ...EnusLocale.dates,
    ...EnusLocale.months,
  };
  static const indo = {
    ...IndoLocale.dates,
    ...IndoLocale.months,
  };
}
