import 'controller/load_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';
import 'package:stroller/widgets/custom_button.dart';

class LoadScreenOneScreen extends GetWidget<LoadScreenOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  getPadding(left: 97, top: 126, right: 97),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(22.00)),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgS,
                                      height: getVerticalSize(218.00),
                                      width: getHorizontalSize(112.00),
                                      fit: BoxFit.cover)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 97, top: 65, right: 97),
                              child: Text("lbl_stroller".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold27
                                      .copyWith(letterSpacing: 2.16)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(236.00),
                              margin: getMargin(left: 97, top: 70, right: 96),
                              child: Text("msg_see_the_world_i".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsSemiBold22))),
                      CustomButton(
                          width: 264,
                          text: "lbl_sign_back_in".tr,
                          margin: getMargin(left: 69, top: 66, right: 69),
                          variant: ButtonVariant.OutlineBlue500,
                          shape: ButtonShape.RoundedBorder34,
                          fontStyle: ButtonFontStyle.PoppinsRegular22,
                          onTap: onTapSignbackin,
                          alignment: Alignment.centerRight),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(
                                  left: 77, top: 64, right: 77, bottom: 5),
                              child: Text("msg_beta_late_than".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular22)))
                    ])))));
  }

  onTapSignbackin() {
    Get.toNamed(AppRoutes.loginAuthScreen);
  }
}
