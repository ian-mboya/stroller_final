// ignore_for_file: unused_local_variable

import 'controller/welcome_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';
import 'package:stroller/widgets/custom_button.dart';

class WelcomePageScreen extends GetWidget<WelcomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomButton(
                          width: 116,
                          text: "lbl_logout".tr,
                          margin: getMargin(left: 24, top: 31, right: 24),
                          variant: ButtonVariant.OutlineBlack9003f,
                          shape: ButtonShape.RoundedBorder18,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold15,
                          onTap: onTapLogout1,
                          alignment: Alignment.centerRight),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 21, top: 6, right: 21),
                              child: Text("lbl_hello".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold25
                                      .copyWith(letterSpacing: 1.25)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 44, right: 21),
                              child: Text("msg_welcome_to_stro".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular28))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 58, right: 21),
                              child: Text("msg_detect_world_ob".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsRegular22Black900))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapObjectdetectio1();
                              },
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin:
                                      getMargin(left: 21, top: 31, right: 21),
                                  color: ColorConstant.green500,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: getHorizontalSize(2.00)),
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder76),
                                  child: Container(
                                      height: getSize(152.00),
                                      width: getSize(152.00),
                                      decoration: AppDecoration.outline
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder76),
                                      child: Stack(children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(all: 40),
                                                child: InkWell(
                                                    onTap: () {
                                                      onTapImgCamera();
                                                    },
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCamera,
                                                        height: getVerticalSize(
                                                            65.00),
                                                        width:
                                                            getHorizontalSize(
                                                                64.00)))))
                                      ]))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 51, right: 21),
                              child: Text("msg_how_about_using".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsRegular22Black900))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapIcon();
                              },
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin:
                                      getMargin(left: 21, top: 31, right: 21),
                                  color: ColorConstant.green500,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: getHorizontalSize(2.00)),
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder76),
                                  child: Container(
                                      height: getSize(152.00),
                                      width: getSize(152.00),
                                      decoration: AppDecoration.outline
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder76),
                                      child: Stack(children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(all: 40),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgMicrophone,
                                                    height:
                                                        getVerticalSize(65.00),
                                                    width: getHorizontalSize(
                                                        61.00))))
                                      ]))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 49, right: 21),
                              child: Text("msg_or_say_hey_stro".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsRegular22Black900))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 21, top: 81, right: 21, bottom: 5),
                              child: Text("msg_beta_late_than".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular22Black900)))
                    ])))));
  }

  onTapLogout1() async {
    Get.offAllNamed(AppRoutes.loadScreenOneScreen);
  }

  onTapObjectdetectio1() async {
    Get.toNamed(AppRoutes.cameraWindowScreen);
  }

  onTapIcon() async {
    Get.offAndToNamed(AppRoutes.speechToTextScreen);
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
