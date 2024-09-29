import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';

class LaunchHelpService extends GetxService {
  // launch whatsapp
  launchWhatsapp({LaunchHelpWhatsapp? launch}) async {
    final address = 'whatsapp://send?phone=${launch?.phone}&text=${launch?.text}';
    final whatsapp = Uri.parse(address);
    await launchUrl(whatsapp, mode: LaunchMode.externalApplication);
  }

  // launch messenger
  launchMessenger({LaunchHelpMessenger? launch}) async {
    final address = 'fb-messenger://${launch?.page}?text=${launch?.text}';
    final messenger = Uri.parse(address);
    await launchUrl(messenger, mode: LaunchMode.externalApplication);
  }
}
