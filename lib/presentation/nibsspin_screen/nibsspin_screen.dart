import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_outlined_button.dart';

class NibsspinScreen extends StatelessWidget {
  const NibsspinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 328.h,
                child: Column(children: [
                  Container(
                      width: 328.h,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.fillGray10005.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL3),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMaterialsymbol,
                          height: 22.adaptSize,
                          width: 22.adaptSize)),
                  SizedBox(height: 5.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.h, vertical: 24.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage17,
                            height: 55.v,
                            width: 115.h),
                        SizedBox(height: 11.v),
                        Text("NIBSS IDP Platform",
                            style: theme.textTheme.labelMedium),
                        Container(
                            width: 234.h,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 6.v, right: 6.h),
                            child: Text(
                                "An SMS with a verification code was sent to 0808****219",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmall11)),
                        SizedBox(height: 7.v),
                        CustomOutlinedButton(
                            height: 26.v,
                            text: "029829",
                            buttonStyle: CustomButtonStyles.outlineGreen,
                            buttonTextStyle: theme.textTheme.labelMedium!),
                        SizedBox(height: 12.v),
                        CustomElevatedButton(
                            width: 108.h,
                            text: "NEXT",
                            buttonStyle: CustomButtonStyles.fillGreen,
                            buttonTextStyle:
                                CustomTextStyles.labelMediumWhiteA700,
                            onTap: () {
                              onTapNext(context);
                            }),
                        SizedBox(height: 5.v),
                        Text("OTP is valid for 5 minutes",
                            style: CustomTextStyles.bodySmallLight_1),
                        SizedBox(height: 11.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 36.h, vertical: 11.v),
                            decoration: AppDecoration.fillGray30001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("No OTP Recieved?",
                                      style: theme.textTheme.bodySmall),
                                  SizedBox(height: 5.v),
                                  CustomElevatedButton(
                                      text: "Try Another Way",
                                      buttonStyle: CustomButtonStyles.fillGreen,
                                      buttonTextStyle:
                                          CustomTextStyles.labelMediumWhiteA700,
                                      onTap: () {
                                        onTapTryanotherway(context);
                                      })
                                ])),
                        SizedBox(height: 36.v)
                      ]))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                decoration: AppDecoration.fillGray10005
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderBL3),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Can’t verify ID with BVN?",
                      style: theme.textTheme.labelMedium),
                  SizedBox(height: 3.v),
                  Text("Click here to signup without BVN",
                      style: CustomTextStyles.labelMediumTeal600
                          .copyWith(decoration: TextDecoration.underline))
                ]))));
  }

  /// Navigates to the nibssremitaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nibssremitaScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nibssremitaScreen);
  }

  /// Navigates to the nibssdetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nibssdetailsScreen.
  onTapTryanotherway(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nibssdetailsScreen);
  }
}
