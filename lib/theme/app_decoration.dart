import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGreen500 => BoxDecoration(
        color: ColorConstant.green500,
      );
  static BoxDecoration get outlineBlue500 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue500,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
        color: ColorConstant.green500,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22.00,
    ),
  );

  static BorderRadius circleBorder76 = BorderRadius.circular(
    getHorizontalSize(
      76.00,
    ),
  );
}
