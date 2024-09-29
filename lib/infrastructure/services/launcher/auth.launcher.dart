import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';

class LaunchAuthService extends GetxService {
  // launch email
  launchEmail({LaunchAuthEmail? launch}) async {
    final email = Uri(
      scheme: 'mailto',
      fragment: launch?.fragment,
      path: launch?.path,
      host: launch?.host,
      queryParameters: launch?.queryParameters,
      pathSegments: launch?.pathSegments,
      port: launch?.port,
      query: launch?.query,
      userInfo: launch?.userInfo,
    );

    await launchUrl(email);
  }
}
