import 'package:stroller/core/app_export.dart';
import 'package:stroller/presentation/sign_up_page_one_screen/models/sign_up_page_one_model.dart';
import 'package:flutter/material.dart';

class SignUpPageOneController extends GetxController {
  TextEditingController textboxController = TextEditingController();

  Rx<SignUpPageOneModel> signUpPageOneModelObj = SignUpPageOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textboxController.dispose();
  }
}
