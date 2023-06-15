import 'controller/load_controller.dart';
import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';

class LoadScreen extends GetWidget<LoadController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapLoadscreen();
                        },
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                      getPadding(left: 97, top: 266, right: 97),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(22.00)),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgS,
                                          height: getVerticalSize(218.00),
                                          width: getHorizontalSize(112.00),
                                          fit: BoxFit.cover))),
                              Padding(
                                  padding:
                                      getPadding(left: 97, top: 65, right: 97),
                                  child: Text("lbl_stroller".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold27
                                          .copyWith(letterSpacing: 2.16))),
                              Padding(
                                  padding: getPadding(
                                      left: 97, top: 184, right: 97, bottom: 5),
                                  child: Text("msg_beta_late_than".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular22))
                            ]))))));
  }

  onTapLoadscreen() {
    Get.toNamed(AppRoutes.loginAuthScreen);
  }
}
