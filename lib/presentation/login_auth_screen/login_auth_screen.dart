import 'package:google_sign_in/google_sign_in.dart' show GoogleSignInAccount;

import 'controller/login_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';
import 'package:stroller/core/utils/validation_functions.dart';
import 'package:stroller/widgets/custom_button.dart';
import 'package:stroller/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stroller/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginAuthScreen extends GetWidget<LoginAuthController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 32, top: 107, right: 32),
                                      child: Text("lbl_login".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular19))),
                              CustomTextFormField(
                                  width: 390,
                                  focusNode: FocusNode(),
                                  controller: controller.textboxController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 20, top: 43, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 390,
                                  focusNode: FocusNode(),
                                  controller: controller.textboxOneController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 20, top: 51, right: 20),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapForgotPassword1();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 34, top: 56, right: 34),
                                          child: Text("msg_forgot_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold15
                                                  .copyWith(
                                                      letterSpacing: 0.75))))),
                              CustomButton(
                                  width: 390,
                                  text: "lbl_submit".tr,
                                  margin:
                                      getMargin(left: 20, top: 27, right: 20),
                                  onTap: fireBaseauth,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 69, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(153.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 8),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .black900)),
                                            Text("lbl_or".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular19),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(153.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.black900))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapRowgoogle1();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 20, top: 41, right: 20),
                                          decoration: AppDecoration
                                              .outlineBlue500
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder15),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 44,
                                                        top: 17,
                                                        bottom: 19),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle,
                                                        height: getVerticalSize(
                                                            33.00),
                                                        width:
                                                            getHorizontalSize(
                                                                35.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 23,
                                                        bottom: 25),
                                                    child: Text(
                                                        "msg_continue_with_g"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular19))
                                              ])))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapNotregistered1();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 20,
                                              top: 56,
                                              right: 20,
                                              bottom: 5),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_not_registered2"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: " ",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.75)),
                                                TextSpan(
                                                    text:
                                                        "lbl_create_account".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .lime800,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0.75))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ]))))));
  }

  onTapForgotPassword1() {
    Get.toNamed(AppRoutes.signUpPageOneScreen);
  }

  fireBaseauth() async {
    // ignore: todo
    //TODO Bind email and password controller to below variable
    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth
        .signInWithEmailAndPassword(
      email: controller.textboxController.text, // Bind email Controller
      password:
          controller.textboxOneController.text, // Bind password Controller
    )
        .then((firebaseSignInUser) {
      if (firebaseSignInUser.user != null) {
        onSuccessFirebaseSignInResponse(firebaseSignInUser);
      } else {
        onErrorFirebaseSignInResponse();
      }
    }).catchError((onError) {
      onErrorFirebaseSignInResponse();
    });
  }

  onSuccessFirebaseSignInResponse(UserCredential firebaseSignInUser) {
    Get.offAllNamed(AppRoutes.welcomePageScreen);
  }

  onErrorFirebaseSignInResponse() {
    Fluttertoast.showToast(
      msg: "Invalid login try again",
    );
  }

  onTapRowgoogle1() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.offAllNamed(AppRoutes.welcomePageScreen);
  }

  onTapNotregistered1() {
    Get.offAllNamed(AppRoutes.signUpPageTwoScreen);
  }
}
