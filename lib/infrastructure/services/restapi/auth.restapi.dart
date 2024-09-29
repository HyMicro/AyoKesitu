import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/repository/repository.dart';
import 'package:ayo_kesitu/infrastructure/services/storage/storage.dart';

class RestAuthService extends GetxService {
  RestAuthRepo restAuthRepo = Get.find();
  AuthStorageService restAuthStorage = Get.find();

  // login
  authUser({LoginReq? loginReq}) async {
    final authResp = await restAuthRepo.getLogin(loginReq);
    if (authResp.isOk) {
      final restAuth = Restapi.fromMap(authResp.body, dataFrom: (auth) => Auth.fromMap(auth));
      if (restAuth.success) {
        await restAuthStorage.writeBearer(restAuth.data);

        final userResp = await restAuthRepo.getUser();
        if (userResp.isOk) {
          final restUser = Restapi.fromMap(userResp.body, dataFrom: (user) => User.fromMap(user));
          if (restUser.success) {
            await restAuthStorage.writeUser(restUser.data);
            return Restapi(
              success: true,
              data: null,
            );
          }
        }

        return Restapi.fromMap(userResp.body);
      }
    }

    return Restapi.fromMap(authResp.body, errorFom: (error) => LoginErr.fromMap(error));
  }

  // register
  createUser({RegisterReq? regisReq}) async {
    final regisResp = await restAuthRepo.postRegister(regisReq);
    if (regisResp.isOk) {
      final loginReq = LoginReq(noKK: regisReq?.noKk, password: regisReq?.password);
      Restapi userAuth = await authUser(loginReq: loginReq);
      if (userAuth.success) return userAuth;

      return Restapi.fromMap(userAuth.toMap(), errorFom: (error) => RegisterErr.fromMap(error));
    }

    return Restapi.fromMap(regisResp.body, errorFom: (error) => RegisterErr.fromMap(error));
  }

  // profile user
  profileUser() async {
    final userResp = await restAuthRepo.getUser();
    if (userResp.isOk) {
      final restUser = Restapi.fromMap(userResp.body, dataFrom: (user) => User.fromMap(user));
      if (restUser.success) {
        await restAuthStorage.writeUser(restUser.data);
        return restUser;
      }
    }

    return Restapi.fromMap(userResp.body);
  }

  // update profile
  updateProfile({UserUpdateReq? userReq}) async {}

  // checking
  checkAuth() async {
    final userResp = await restAuthRepo.getUser();
    if (userResp.isOk) {
      final restUser = Restapi.fromMap(userResp.body, dataFrom: (user) => User.fromMap(user));
      if (restUser.success) {
        await restAuthStorage.writeUser(restUser.data);
        return true;
      }
    }

    await restAuthStorage.deleteBearer();
    await restAuthStorage.deleteUser();
    return false;
  }

  // logout
  unauthUser() async {
    final logoutResp = await restAuthRepo.getLogout();
    if (logoutResp.isOk) {
      await restAuthStorage.deleteBearer();
      await restAuthStorage.deleteUser();
      return true;
    }

    return false;
  }

  // forgot password request token
  requestForgotPass({ForgotPassReq? forgotReq}) async {
    final forgotResp = await restAuthRepo.getPassReq(forgotReq);
    if (forgotResp.isOk) {
      final restForgot = Restapi.fromMap(forgotResp.body, dataFrom: (auth) => ForgotPass.fromMap(auth));
      if (restForgot.success) {
        await restAuthStorage.writeForgotToken(restForgot.data);
        return Restapi(
          success: true,
          data: null,
        );
      }

      return Restapi.fromMap(forgotResp.body);
    }

    return Restapi.fromMap(forgotResp.body, errorFom: (error) => ForgotPassErr.fromMap(error));
  }

  // reset password
  resetPass({ResetPassReq? resetPassReq}) async {
    final forgotResp = await restAuthRepo.getPassReset(resetPassReq);
    if (forgotResp.isOk) {
      final restForgot = Restapi.fromMap(forgotResp.body);
      if (restForgot.success) {
        await restAuthStorage.deleteForgotToken();
        return Restapi(
          success: true,
          data: null,
        );
      }

      return Restapi.fromMap(forgotResp.body);
    }

    return Restapi.fromMap(forgotResp.body, errorFom: (error) => ResetPassErr.fromMap(error));
  }
}
