import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class Frame9393Screen extends StatelessWidget {
  const Frame9393Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: 257.h,
                padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 30.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 15.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgClock,
                      height: 60.v,
                      width: 85.h),
                  SizedBox(height: 22.v),
                  Text("₦10,000.00",
                      style: CustomTextStyles.titleMediumTealA700),
                  SizedBox(height: 2.v),
                  Text("Payment Approved",
                      style: CustomTextStyles.labelLargeBlack90002),
                  SizedBox(height: 29.v),
                  SizedBox(
                      width: 145.h,
                      child: Text("Bank Account Funding Successful",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBluegray900)),
                  SizedBox(height: 15.v),
                  Text("Thank you for using Remita",
                      style: CustomTextStyles.bodySmallRaleway10)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 37.v,
                width: 92.h,
                text: "Finish",
                margin: EdgeInsets.only(left: 82.h, right: 82.h, bottom: 46.v),
                buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
                buttonTextStyle: CustomTextStyles.titleMediumMedium16,
                onTap: () {
                  onTapFinish(context);
                })));
  }

  /// Navigates to the mainDashboardContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mainDashboardContainerScreen.
  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainDashboardContainerScreen);
  }
}
