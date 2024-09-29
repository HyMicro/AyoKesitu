// Export
export 'init.route.dart';
export 'root.route.dart';
export 'auth.route.dart';
export 'utils.route.dart';

// Routes
class Routes {
  // root
  static const INIT = '/';
  static const ROOT = '/root';
  static const HELP = '/help';

  // auth
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGOT = '/forgot';
  static const CHECK_EMAIL = '/forgot/check-email';
  static const NEW_PASS = '/forgot/new-password';

  // utils
  static const NOTFOUND = '/404';
}
