import 'package:stroller/core/app_export.dart';
import 'package:stroller/presentation/login_auth_screen/models/login_auth_model.dart';
import 'package:flutter/material.dart';

class LoginAuthController extends GetxController {
  TextEditingController textboxController = TextEditingController();

  TextEditingController textboxOneController = TextEditingController();

  Rx<LoginAuthModel> loginAuthModelObj = LoginAuthModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textboxController.dispose();
    textboxOneController.dispose();
  }
}
