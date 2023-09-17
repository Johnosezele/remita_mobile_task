import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class KycLv2SubmittedForManualVerificationScreen extends StatelessWidget {
  const KycLv2SubmittedForManualVerificationScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                height: 269.v,
                width: 292.h,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 11.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheck61,
                                height: 100.adaptSize,
                                width: 100.adaptSize),
                            SizedBox(height: 8.v),
                            SizedBox(
                                width: 126.h,
                                child: Text("Account created \nsuccessfully ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleMedium16
                                        .copyWith(height: 1.31))),
                            SizedBox(height: 29.v),
                            CustomElevatedButton(
                                height: 43.v,
                                text: "Proceed to dashboard",
                                onTap: () {
                                  onTapProceedto(context);
                                })
                          ]))),
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.topRight)
                ]))));
  }

  /// Navigates to the mainDashboardOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mainDashboardOneScreen.
  onTapProceedto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainDashboardOneScreen);
  }
}
