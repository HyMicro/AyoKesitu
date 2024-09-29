import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';

class DownFileService extends GetxService {
  @override
  void onInit() async {
    await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
    super.onInit();
  }
}
