import 'package:stroller/core/app_export.dart';
import 'package:stroller/presentation/sign_up_page_two_screen/models/sign_up_page_two_model.dart';
import 'package:flutter/material.dart';

class SignUpPageTwoController extends GetxController {
  TextEditingController textboxController = TextEditingController();

  TextEditingController textboxOneController = TextEditingController();

  Rx<SignUpPageTwoModel> signUpPageTwoModelObj = SignUpPageTwoModel().obs;

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
