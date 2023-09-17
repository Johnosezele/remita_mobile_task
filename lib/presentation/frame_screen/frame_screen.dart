import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_title.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_floating_text_field.dart';
import 'package:remita_test_ui/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FrameScreen extends StatelessWidget {
  FrameScreen({Key? key}) : super(key: key);

  TextEditingController labelController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

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
                    text: "Add existing eNaira Account",
                    margin: EdgeInsets.only(top: 54.v, bottom: 19.v)),
                styleType: Style.bgShadow),
            body: Form(
                key: _formKey,
                child: Container(
                    width: 337.h,
                    margin: EdgeInsets.fromLTRB(19.h, 24.v, 19.h, 5.v),
                    padding: EdgeInsets.all(19.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Wallet found!",
                          style: CustomTextStyles.titleMediumGray80002),
                      SizedBox(height: 31.v),
                      CustomIconButton(
                          height: 61.adaptSize,
                          width: 61.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgFrame9037)),
                      SizedBox(height: 22.v),
                      CustomFloatingTextField(
                          controller: labelController,
                          labelText: "Wallet ID",
                          labelStyle: theme.textTheme.bodyMedium!,
                          hintText: "Wallet ID"),
                      SizedBox(height: 6.v),
                      CustomFloatingTextField(
                          controller: nameController,
                          labelText: "Name",
                          labelStyle: theme.textTheme.bodyMedium!,
                          hintText: "Name"),
                      SizedBox(height: 6.v),
                      CustomFloatingTextField(
                          controller: passwordController,
                          labelText: "eNaira password or PIN",
                          labelStyle: CustomTextStyles.bodySmallRalewayGray800,
                          hintText: "eNaira password or PIN",
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          suffix: Container(
                              margin: EdgeInsets.symmetric(horizontal: 9.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgDarkEye)),
                          suffixConstraints: BoxConstraints(maxHeight: 52.v),
                          contentPadding:
                              EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 17.v)),
                      SizedBox(height: 6.v),
                      CustomFloatingTextField(
                          controller: phoneNumberController,
                          labelText: "OTP sent to your registered phone number",
                          labelStyle: CustomTextStyles.bodySmallRalewayGray800,
                          hintText: "OTP sent to your registered phone number",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          contentPadding:
                              EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 17.v)),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Forgot password? ",
                                    style: CustomTextStyles.labelMediumRaleway),
                                TextSpan(
                                    text: "Reset it here",
                                    style: CustomTextStyles
                                        .labelMediumRalewayDeeporange50001
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 31.v),
                      CustomElevatedButton(
                          height: 40.v,
                          width: 132.h,
                          text: "Proceed",
                          buttonTextStyle: theme.textTheme.titleSmall!)
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
