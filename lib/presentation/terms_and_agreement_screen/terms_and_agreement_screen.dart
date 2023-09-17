import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class TermsAndAgreementScreen extends StatelessWidget {
  const TermsAndAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 25.v),
                        SizedBox(
                            height: 524.v,
                            width: 374.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 45.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                    "Welcome to Remita Mobile App",
                                                    style: CustomTextStyles
                                                        .titleMediumBold18),
                                                SizedBox(height: 40.v),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImg9584,
                                                    height: 216.v,
                                                    width: 283.h),
                                                Container(
                                                    width: 219.h,
                                                    margin: EdgeInsets.only(
                                                        left: 30.h,
                                                        top: 31.v,
                                                        right: 33.h),
                                                    child: Text(
                                                        "By tapping on the “I agree” button, \nyou hereby accept the ",
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: CustomTextStyles
                                                            .bodyMedium14)),
                                                SizedBox(height: 11.v),
                                                Text("terms of use agreement",
                                                    style: CustomTextStyles
                                                        .bodyMediumTeal600
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text("Terms of use Agreement",
                                          style: CustomTextStyles
                                              .titleMediumBold)),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 34.v),
                                          child: SizedBox(
                                              width: 374.h,
                                              child: Divider(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer))))
                                ]))
                      ])),
                  Opacity(
                      opacity: 0.03,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: 666.v,
                          width: 359.h,
                          alignment: Alignment.centerLeft))
                ])),
            bottomNavigationBar: SizedBox(
                height: 67.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomElevatedButton(
                                height: 67.v,
                                width: 187.h,
                                text: "< I DECLINE",
                                buttonStyle: CustomButtonStyles.fillWhiteA,
                                buttonTextStyle: theme.textTheme.bodyLarge!),
                            CustomElevatedButton(
                                height: 67.v,
                                width: 187.h,
                                text: "I AGREE >",
                                buttonStyle: CustomButtonStyles.fillBlueGray,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeWhiteA700,
                                onTap: () {
                                  navigateToSignUp(context);
                                })
                          ])),
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(color: appTheme.blueGray700)))
                ]))));
  }

  /// Navigates to the emailSignUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the emailSignUpScreen.
  navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.emailSignUpScreen);
  }
}
