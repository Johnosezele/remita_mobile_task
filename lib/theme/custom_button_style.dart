import 'dart:ui';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray700,
      );
  static ButtonStyle get fillBlueGrayTL13 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL21 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray30001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillGrayTL12 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillGrayTL24 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.49),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillTeal => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepOrange50001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        shadowColor: appTheme.blueGray90014,
        elevation: 4,
      );
  static ButtonStyle get outlineBlueGrayTL22 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA700.withOpacity(0.49),
        side: BorderSide(
          color: appTheme.blueGray300.withOpacity(0.49),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        shadowColor: appTheme.blueGray40014,
        elevation: 23,
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        side: BorderSide(
          color: appTheme.gray40002,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlineGreen => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.green900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get outlineSecondaryContainer => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.secondaryContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get outlineTealF => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
        shadowColor: appTheme.teal3007f.withOpacity(0.4),
        elevation: 14,
      );
  static ButtonStyle get outlineTealFTL24 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        shadowColor: appTheme.teal3007f,
        elevation: 14,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
