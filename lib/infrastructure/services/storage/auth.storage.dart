import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/security/env/env.dart';

class AuthStorageService extends GetxService {
  late FlutterSecureStorage storage;

  @override
  void onInit() {
    storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: null,
      ),
    );
    super.onInit();
  }

  // write bearer
  writeBearer(Auth? request) async {
    await storage.write(key: EnvStorage.bearerSecure, value: json.encode(request?.toMap()));
  }

  // write user
  writeUser(User? request) async {
    await storage.write(key: EnvStorage.userSecure, value: json.encode(request?.toMap()));
  }

  // write forgot token
  writeForgotToken(ForgotPass? request) async {
    await storage.write(key: EnvStorage.forgotToken, value: json.encode(request?.toMap()));
  }

  // read bearer
  readBearer() async {
    final bearerString = await storage.read(key: EnvStorage.bearerSecure);
    if (bearerString != null) return Auth.fromMap(json.decode(bearerString));
    return null;
  }

  // read user
  readUser() async {
    final userString = await storage.read(key: EnvStorage.userSecure);
    if (userString != null) return User.fromMap(json.decode(userString));
    return null;
  }

  // read forgot token
  readForgoToken() async {
    final userString = await storage.read(key: EnvStorage.forgotToken);
    if (userString != null) return ForgotPass.fromMap(json.decode(userString));
    return null;
  }

  // delete bearer
  deleteBearer() async {
    await storage.delete(key: EnvStorage.bearerSecure);
  }

  // delete user
  deleteUser() async {
    await storage.delete(key: EnvStorage.userSecure);
  }

  // delete forgot token
  deleteForgotToken() async {
    await storage.delete(key: EnvStorage.forgotToken);
  }
}
