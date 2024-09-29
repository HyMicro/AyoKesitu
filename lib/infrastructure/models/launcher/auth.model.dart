// model launch auth email
class LaunchAuthEmail {
  final String? userInfo;
  final String? host;
  final int? port;
  final String? path;
  final Iterable<String>? pathSegments;
  final String? query;
  final Map<String, dynamic>? queryParameters;
  final String? fragment;

  LaunchAuthEmail({
    this.userInfo,
    this.host,
    this.port,
    this.path,
    this.pathSegments,
    this.query,
    this.queryParameters,
    this.fragment,
  });
}
