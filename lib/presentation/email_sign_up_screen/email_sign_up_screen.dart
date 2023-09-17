import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EmailSignUpScreen extends StatelessWidget {
  EmailSignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 27.h, top: 68.v, right: 27.h),
                    child: Column(children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRemitawhitelogo,
                          height: 30.v,
                          width: 108.h),
                      SizedBox(height: 16.v),
                      Text("Create Account",
                          style: theme.textTheme.titleMedium),
                      Container(
                          margin: EdgeInsets.only(
                              left: 1.h, top: 46.v, bottom: 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 16.v),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomTextFormField(
                                controller: emailController,
                                hintText: "enter your email",
                                hintStyle:
                                    CustomTextStyles.bodySmallRalewayBlack90001,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress),
                            SizedBox(height: 22.v),
                            CustomElevatedButton(
                                height: 51.v,
                                text: "Submit",
                                buttonStyle: CustomButtonStyles.outlineTealF,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumWhiteA700Medium16_1,
                                onTap: () {
                                  navigateToBvn(context);
                                }),
                            SizedBox(height: 33.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Already have an account?",
                                      style: CustomTextStyles
                                          .bodySmallRaleway10_1),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "Login",
                                      style: CustomTextStyles
                                          .labelMediumRalewayDeeporange50001Bold
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 7.v)
                          ]))
                    ])))));
  }

  /// Navigates to the bvnSignUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bvnSignUpScreen.
  navigateToBvn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bvnSignUpScreen);
  }
}
