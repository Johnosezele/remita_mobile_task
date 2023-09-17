import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/android_large_seventeen_page/android_large_seventeen_page.dart';
import 'package:remita_test_ui/presentation/main_dashboard_page/main_dashboard_page.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_title.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_bottom_bar.dart';
import 'package:remita_test_ui/widgets/custom_checkbox_button.dart';
import 'package:remita_test_ui/widgets/custom_drop_down.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateEnairaBvnSixtyoneScreen extends StatelessWidget {
  CreateEnairaBvnSixtyoneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController userNameController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController enterbvnController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  bool agreementStatem = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 30.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 52.v, bottom: 24.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(
                    text: "Create eNaira Account",
                    margin: EdgeInsets.only(top: 52.v, bottom: 21.v)),
                styleType: Style.bgShadow),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 24.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 19.h, right: 19.h, bottom: 5.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.h, vertical: 20.v),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                            controller: userNameController,
                                            hintText: "Enter Username",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 9.h,
                                                    vertical: 14.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL3,
                                            fillColor: appTheme.gray10004),
                                        SizedBox(height: 18.v),
                                        CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 14.v, 9.h, 11.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDropdown)),
                                            hintText:
                                                "Select Bank to pair with eNaira Wallet ",
                                            items: dropdownItemList,
                                            contentPadding: EdgeInsets.only(
                                                left: 9.h,
                                                top: 14.v,
                                                bottom: 14.v),
                                            borderDecoration:
                                                DropDownStyleHelper
                                                    .outlineGrayTL3,
                                            fillColor: appTheme.gray10004,
                                            onChanged: (value) {}),
                                        SizedBox(height: 18.v),
                                        CustomTextFormField(
                                            controller: enterbvnController,
                                            hintText: "Enter Account Number",
                                            textInputType: TextInputType.number,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 9.h,
                                                    vertical: 14.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL3,
                                            fillColor: appTheme.gray10004),
                                        SizedBox(height: 18.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "Create eNaira Password",
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 14.v, 9.h, 11.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDarkEye)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 44.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 9.h,
                                                top: 14.v,
                                                bottom: 14.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL3,
                                            fillColor: appTheme.gray10004),
                                        Container(
                                            width: 290.h,
                                            margin: EdgeInsets.only(
                                                top: 8.v, right: 6.h),
                                            child: Text(
                                                "Password should contain a minimum of 12 characters, one Upper case letter, one lower case letter and a special character",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallPoppinsDeeporange50001)),
                                        SizedBox(height: 19.v),
                                        CustomTextFormField(
                                            controller: passwordController1,
                                            hintText: "Confirm eNaira Password",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 14.v, 9.h, 11.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDarkEye)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 44.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 9.h,
                                                top: 14.v,
                                                bottom: 14.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL3,
                                            fillColor: appTheme.gray10004),
                                        CustomCheckboxButton(
                                            text:
                                                "I accept the CBN’s  Terms and Conditions and Privacy Policy",
                                            value: agreementStatem,
                                            margin: EdgeInsets.only(
                                                top: 19.v, right: 13.h),
                                            onChange: (value) {
                                              agreementStatem = value;
                                            }),
                                        SizedBox(height: 19.v),
                                        Opacity(
                                            opacity: 0.4,
                                            child: CustomElevatedButton(
                                                height: 46.v,
                                                width: 137.h,
                                                text: "Proceed",
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimary,
                                                alignment: Alignment.center))
                                      ]))))
                    ]))),
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
