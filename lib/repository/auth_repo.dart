import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:gtag_app/repository/api.dart';
import 'package:gtag_app/response/res_login.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthRepo {
  Future<ResLogin?> userLogin(String email, String password) async {
    try {
      Response res = await http.post(Uri.parse(Api.loginUrl),
          body: {"email": email, "password": password});
      return resLoginFromJson(res.body);
    } catch (e, st) {
      if (kDebugMode) {
        log(st.toString());
      }
      log("error repo:  ${e.toString()}");
    }
    return null;
  }
}
