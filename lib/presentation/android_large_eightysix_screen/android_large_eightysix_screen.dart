import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/android_large_seventeen_page/android_large_seventeen_page.dart';
import 'package:remita_test_ui/presentation/main_dashboard_page/main_dashboard_page.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_title.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_bottom_bar.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeEightysixScreen extends StatelessWidget {
  AndroidLargeEightysixScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 29.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 52.v, bottom: 24.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(
                    text: "Create/Add eNaira Account",
                    margin: EdgeInsets.only(top: 52.v, bottom: 21.v)),
                styleType: Style.bgShadow),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 19.h, right: 19.h, bottom: 5.v),
                                  child: Column(children: [
                                    CustomElevatedButton(
                                        height: 48.v,
                                        text: "Create eNaira Account",
                                        rightIcon: Container(
                                            margin: EdgeInsets.only(left: 30.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(1.h)),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPlay)),
                                        buttonStyle: CustomButtonStyles
                                            .outlineBlueGrayTL5,
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallBlack90002SemiBold,
                                        onTap: () {
                                          onTapCreateenaira(context);
                                        }),
                                    SizedBox(height: 8.v),
                                    CustomElevatedButton(
                                        height: 48.v,
                                        text: "Add Existing eNaira Account",
                                        rightIcon: Container(
                                            margin: EdgeInsets.only(left: 30.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(1.h)),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPlay)),
                                        buttonStyle: CustomButtonStyles
                                            .outlineBlueGrayTL5,
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallBlack90002SemiBold)
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

  /// Navigates to the createEnairaBvnSixtyoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the createEnairaBvnSixtyoneScreen.
  onTapCreateenaira(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createEnairaBvnSixtyoneScreen);
  }
}
