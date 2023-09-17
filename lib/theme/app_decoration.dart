import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10005 => BoxDecoration(
        color: appTheme.gray10005,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray30001 => BoxDecoration(
        color: appTheme.gray30001,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen90001,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange900,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.53),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.02,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              23,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray5001 => BoxDecoration();
  static BoxDecoration get outlineBluegray5002 => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray5002,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              6,
              21,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray5099 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray5099,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray40003 => BoxDecoration(
        color: appTheme.gray10003,
        border: Border.all(
          color: appTheme.gray40003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray50001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get circleBorder34 => BorderRadius.circular(
        34.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL3 => BorderRadius.vertical(
        bottom: Radius.circular(3.h),
      );
  static BorderRadius get customBorderTL3 => BorderRadius.vertical(
        top: Radius.circular(3.h),
      );
  static BorderRadius get customBorderTL50 => BorderRadius.vertical(
        top: Radius.circular(50.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
