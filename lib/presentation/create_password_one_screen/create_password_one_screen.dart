import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreatePasswordOneScreen extends StatelessWidget {
  CreatePasswordOneScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

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
                    text: "Step 2 of 3\nSetup your Security",
                    margin: EdgeInsets.only(top: 43.v, bottom: 10.v)),
                styleType: Style.bgShadow),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                    EdgeInsets.symmetric(horizontal: 26.h, vertical: 21.v),
                    child: Column(children: [
                      Text("Set up account password",
                          style: CustomTextStyles.labelLargeGray60002),
                      Container(
                          margin: EdgeInsets.only(
                              left: 1.h, top: 31.v, bottom: 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 24.v),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                          Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomTextFormField(
                                controller: passwordController,
                                hintText: "*****",
                                hintStyle: theme.textTheme.headlineLarge!,
                                textInputType: TextInputType.visiblePassword,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 10.h, 15.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgDarkEye)),
                                suffixConstraints:
                                BoxConstraints(maxHeight: 50.v),
                                obscureText: true,
                                contentPadding: EdgeInsets.only(
                                    left: 30.h, top: 7.v, bottom: 7.v)),
                            SizedBox(height: 22.v),
                            CustomTextFormField(
                                controller: passwordController1,
                                hintText: "*****",
                                hintStyle: theme.textTheme.headlineLarge!,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 10.h, 15.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgDarkEye)),
                                suffixConstraints:
                                BoxConstraints(maxHeight: 50.v),
                                obscureText: true,
                                contentPadding: EdgeInsets.only(
                                    left: 30.h, top: 7.v, bottom: 7.v)),
                            SizedBox(height: 22.v),
                            CustomElevatedButton(
                                height: 51.v,
                                text: "Proceed",
                                buttonStyle: CustomButtonStyles.outlineTealF,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumWhiteA700Medium16_1,
                                onTap: () {
                                  onTapProceed(context);
                                })
                          ]))
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the transactionPinFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the transactionPinFiveScreen.
  onTapProceed(BuildContext context) {
    //Navigator.pushNamed(context, AppRoutes.transactionPinFiveScreen);
  }
}
