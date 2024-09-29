import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';
import 'package:ayo_kesitu/infrastructure/security/env/env.dart';
import 'package:ayo_kesitu/utils/utils.dart';

// custom getx connect
class Repository extends GetxService {
  AuthStorageService restAuthStorage = Get.find();
  final dio = Dio();
  final con = GetConnect();
  final url = RxString(EnvRestapi.URL_STAGING);

  @override
  void onInit() {
    setupVar();
    setupDio();
    setupGetx();
    super.onInit();
  }

  // setup variable
  setupVar() {
    if (FlavorAction.flavor == Flavor.develop) {
      url(EnvRestapi.URL_DEV);
    } else if (FlavorAction.flavor == Flavor.staging) {
      url(EnvRestapi.URL_STAGING);
    } else if (FlavorAction.flavor == Flavor.product) {
      url(EnvRestapi.URL_PROD);
    }
  }

  // setup dio
  setupDio() {
    dio.options.baseUrl = "${url.value}/api";
    dio.options.validateStatus = (_) => true;
    dio.options.responseType = ResponseType.json;
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Accept'] = 'application/json';

      Auth? bearer = await restAuthStorage.readBearer();
      if (bearer != null) options.headers['Authorization'] = 'Bearer ${bearer.apiToken}';
      return handler.next(options);
    }));
  }

  // setup getx
  setupGetx() {
    con.httpClient.baseUrl = "${url.value}/api";
    con.httpClient.addRequestModifier<void>((request) async {
      request.headers['Accept'] = 'application/json';

      Auth? bearer = await restAuthStorage.readBearer();
      if (bearer != null) request.headers['Authorization'] = 'Bearer ${bearer.apiToken}';
      return request;
    });
  }
}
