// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gtag_app/repository/auth_repo.dart';
import 'package:gtag_app/response/res_login.dart';

import 'package:gtag_app/screen/homepage.dart';
import 'package:gtag_app/utils/nav_utils.dart';
import 'package:gtag_app/utils/notifications_utils.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;
  final AuthRepo _repo = AuthRepo();
  ResLogin? dataLogin;

  Future<void> login(BuildContext context,
      {required String email, required String password}) async {
    try {
      isLoading = true;
      notifyListeners();

      ResLogin? res = await _repo.userLogin(email, password);

      if (res!.token != null) {
        dataLogin = res;
        log(dataLogin!.token.toString());
        isLoading = false;
        notifyListeners();
        NotificationUtils.showSnackbar(context,
            message: "Login Successful", color: Colors.blue);
        Nav.toAll(context, page: HomePage());
      } else {
        log(res.token.toString());
        isLoading = false;
        notifyListeners();
        NotificationUtils.showSnackbar(context,
            message: "Failed to Login", color: Colors.red);
      }
    } catch (e) {
      log(e.toString());
      isLoading = false;
      notifyListeners();
      NotificationUtils.showSnackbar(context,
          message: "Unknown Error?", color: Colors.orangeAccent);
    }
  }

  Future<void> register(BuildContext context,
      {required String email, required String password}) async {
    try {
      isLoading = true;
      notifyListeners();
    } catch (e) {
      log(e.toString());
      isLoading = false;
      notifyListeners();
      NotificationUtils.showSnackbar(context,
          message: "Unknown Error?", color: Colors.red);
    }
  }
}
