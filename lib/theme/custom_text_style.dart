import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumDeeporange600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange600,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray70002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray70002,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray50001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray80002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumTeal600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal600,
        fontSize: 14.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsDeeporange50001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepOrange50001,
        fontSize: 10.fSize,
      );
  static get bodySmallRaleway => theme.textTheme.bodySmall!.raleway.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallRaleway10 => theme.textTheme.bodySmall!.raleway.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallRaleway10_1 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallRaleway12 => theme.textTheme.bodySmall!.raleway.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallRalewayBlack90001 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get bodySmallRalewayGray60003 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray60003,
        fontSize: 12.fSize,
      );
  static get bodySmallRalewayGray800 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray800,
        fontSize: 11.fSize,
      );
  static get bodySmallRalewayGray90001 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRaleway_1 => theme.textTheme.bodySmall!.raleway;
  static get bodySmallRaleway_2 => theme.textTheme.bodySmall!.raleway;
  // Headline text style
  static get headlineMediumRaleway =>
      theme.textTheme.headlineMedium!.raleway.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack90002SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray60002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterGray80002 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray80002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray80002Medium =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray80002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterGray80002SemiBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray80002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray80002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray8000210 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 10.fSize,
      );
  static get labelMediumGreen900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green900,
      );
  static get labelMediumRaleway => theme.textTheme.labelMedium!.raleway;
  static get labelMediumRalewayDeeporange50001 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.deepOrange50001,
      );
  static get labelMediumRalewayDeeporange50001Bold =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.deepOrange50001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRaleway_1 => theme.textTheme.labelMedium!.raleway;
  static get labelMediumSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get labelMediumTeal600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallInterGreen900 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.green900,
      );
  static get labelSmallInterLightgreen900 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.lightGreen900,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallRobotoDeeporange50001 =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: appTheme.deepOrange50001,
        fontWeight: FontWeight.w900,
      );
  // Poppins text style
  static get poppinsLightgreen90001 => TextStyle(
        color: appTheme.lightGreen90001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w300,
      ).poppins;
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w300,
      ).poppins;
  // Raleway text style
  static get ralewayWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 70.fSize,
        fontWeight: FontWeight.w400,
      ).raleway;
  // Roboto text style
  static get robotoDeeporange50001 => TextStyle(
        color: appTheme.deepOrange50001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w900,
      ).roboto;
  static get robotoDeeporange50001Black => TextStyle(
        color: appTheme.deepOrange50001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w900,
      ).roboto;
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDeeporange600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange600,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray80002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumTealA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700Medium16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700Medium16_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
      );
  static get titleSmallBlack90002Black => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallBlack90002Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90002SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterTeal600 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal600,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsDeeporange50001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.deepOrange50001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRed800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
