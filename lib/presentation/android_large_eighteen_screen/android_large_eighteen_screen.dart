import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/android_large_seventeen_page/android_large_seventeen_page.dart';
import 'package:remita_test_ui/presentation/main_dashboard_page/main_dashboard_page.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_subtitle.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_bottom_bar.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeEighteenScreen extends StatelessWidget {
  AndroidLargeEighteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 68.v,
                leadingWidth: 32.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin:
                        EdgeInsets.only(left: 24.h, top: 37.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Fund My Bank Account",
                    margin: EdgeInsets.only(top: 35.v, bottom: 12.v)),
                styleType: Style.bgShadow_1),
            body: SizedBox(
                width: 360.h,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 21.h, right: 21.h, bottom: 5.v),
                              child: Column(children: [
                                SizedBox(
                                    height: 167.v,
                                    width: 317.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 103.h,
                                                      vertical: 24.v),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 15.v,
                                                                    right: 1.h),
                                                            child: Text(
                                                                "Payment Summary",
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack90002)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 12.v,
                                                                    right: 1.h),
                                                            child: Text(
                                                                "eNaira Funding",
                                                                style: CustomTextStyles
                                                                    .bodyMediumBluegray900)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 28.v,
                                                                    right: 6.h),
                                                            child: Text(
                                                                "₦10,000.00",
                                                                style: CustomTextStyles
                                                                    .titleMediumDeeporange600))
                                                      ]))),
                                          CustomIconButton(
                                              height: 37.adaptSize,
                                              width: 37.adaptSize,
                                              padding: EdgeInsets.all(8.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineDeepOrange,
                                              alignment: Alignment.topCenter,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgInfo1))
                                        ])),
                                SizedBox(height: 10.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 20.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 2.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Name on Account: ",
                                                        style: CustomTextStyles
                                                            .labelLargeGray60002),
                                                    Text("Jonathan Johnson...",
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90002)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 9.v, right: 2.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Balance",
                                                        style: CustomTextStyles
                                                            .labelLargeGray60002),
                                                    Text("₦400,023.32",
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90002)
                                                  ])),
                                          SizedBox(height: 16.v),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMtnlogo,
                                                    height: 35.adaptSize,
                                                    width: 35.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            4.h)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h,
                                                        top: 9.v,
                                                        bottom: 10.v),
                                                    child: Text("102****4242",
                                                        style: CustomTextStyles
                                                            .bodySmallRaleway12)),
                                                CustomElevatedButton(
                                                    width: 110.h,
                                                    text: "Change Payment Mode",
                                                    margin: EdgeInsets.only(
                                                        left: 44.h,
                                                        top: 6.v,
                                                        bottom: 3.v),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillBlueGrayTL13,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .bodySmallRaleway)
                                              ])
                                        ])),
                                CustomElevatedButton(
                                    height: 49.v,
                                    text: "Alternate Payment Methods",
                                    margin: EdgeInsets.only(
                                        left: 27.h, top: 36.v, right: 27.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillGrayTL24,
                                    buttonTextStyle: CustomTextStyles
                                        .bodyMediumDeeporange600),
                                SizedBox(height: 36.v),
                                CustomElevatedButton(
                                    height: 49.v,
                                    width: 143.h,
                                    text: "Proceed",
                                    buttonStyle:
                                        CustomButtonStyles.outlineTealFTL24)
                              ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.mainDashboardPage;
      case BottomBarEnum.Inbox:
        return "/";
      case BottomBarEnum.Gethelp:
        return AppRoutes.androidLargeSeventeenPage;
      case BottomBarEnum.Menu:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainDashboardPage:
        return MainDashboardPage();
      case AppRoutes.androidLargeSeventeenPage:
        return AndroidLargeSeventeenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
