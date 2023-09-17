import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

class PinAlertDialogScreen extends StatelessWidget {
  PinAlertDialogScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 360.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 15.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  color: appTheme.gray10002,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.customBorderTL50,
                  ),
                  child: Container(
                    height: 427.v,
                    width: 360.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 54.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL50,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 133.h,
                            child: Text(
                              "Please enter your 4 to 6 \ndigit PIN to proceed",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.labelLargeBlack90002SemiBold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 201.v,
                                width: 317.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 179.v,
                                        width: 317.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6.h,
                                                  vertical: 45.v,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlueGray
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 5.v),
                                                    CustomTextFormField(
                                                      controller:
                                                          passwordController,
                                                      hintText: "****",
                                                      hintStyle: CustomTextStyles
                                                          .titleSmallBlack90002Black,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType:
                                                          TextInputType
                                                              .visiblePassword,
                                                      obscureText: true,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 30.h,
                                                        vertical: 13.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                height: 83.v,
                                                width: 37.h,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height: 37.adaptSize,
                                                        width: 37.adaptSize,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .deepOrange50001,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            18.h,
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: appTheme
                                                                  .deepOrange50001,
                                                              spreadRadius: 2.h,
                                                              blurRadius: 2.h,
                                                              offset: Offset(
                                                                0,
                                                                12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "*",
                                                        style: CustomTextStyles
                                                            .ralewayWhiteA700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      height: 46.v,
                                      width: 195.h,
                                      text: "PAY ₦10,000.00",
                                      buttonTextStyle:
                                          theme.textTheme.titleSmall!,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 48.v),
                              CustomElevatedButton(
                                height: 42.v,
                                width: 166.h,
                                text: "Use Biometric ID",
                                leftIcon: Container(
                                  margin: EdgeInsets.only(right: 3.h),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.img28030591,
                                  ),
                                ),
                                buttonStyle:
                                    CustomButtonStyles.fillBlueGrayTL21,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumDeeporange600,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
