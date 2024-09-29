import 'package:get/get.dart';

import 'package:ayo_kesitu/infrastructure/models/models.dart';
import 'package:ayo_kesitu/infrastructure/repository/utils/utils.dart';

class RestAuthRepo extends Repository {
  // get login
  Future<Response> getLogin(LoginReq? request) async {
    return await con.get('/login', query: request?.toMap());
  }

  // post register
  Future<Response> postRegister(RegisterReq? request) async {
    return await con.post('/register', request?.toMap());
  }

  // get user
  Future<Response> getUser() async {
    return await con.get('/user');
  }

  // get logout
  Future<Response> getLogout() async {
    return await con.get('/logout');
  }

  // get password request
  Future<Response> getPassReq(ForgotPassReq? request) async {
    return await con.get('/pass-req', query: request?.toMap());
  }

  // get password reset form
  Future<Response> getPassResetForm(String token) async {
    return await con.get('/pass-reset-form/$token');
  }

  // get password reset
  Future<Response> getPassReset(ResetPassReq? request) async {
    return await con.get('/pass-reset/${request?.token}', query: request?.toMap());
  }
}
