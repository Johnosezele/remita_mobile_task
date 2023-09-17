import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/kyc_onee_screen/kyc_onee_screen.dart';
import 'package:remita_test_ui/presentation/nibsscontd_screen/nibsscontd_screen.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_outlined_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BvnSignUpScreen extends StatelessWidget {
  BvnSignUpScreen({Key? key}) : super(key: key);

  TextEditingController accountnumberController = TextEditingController();

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
                              top: 46.v, right: 1.h, bottom: 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 16.v),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomTextFormField(
                                controller: accountnumberController,
                                hintText: "enter your bvn",
                                hintStyle:
                                    CustomTextStyles.bodySmallRalewayBlack90001,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.phone),
                            SizedBox(height: 22.v),
                            CustomElevatedButton(
                                height: 51.v,
                                text: "Proceed",
                                buttonStyle: CustomButtonStyles.outlineTealF,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumWhiteA700Medium16_1,
                                onTap: () {
                                  navigateToNibssDialog(context);
                                  //Navigator.of(context).pop();
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

  /// Navigates to the nibssdialogScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nibssdialogScreen.
  navigateToNibssDialog(BuildContext context) {
    var nibssDialog = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "You will be redirected to the NIBSS BVN verification platform to continue your ID authentication",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),
          CustomImageView(
            imagePath: ImageConstant.imgImage17118x168,
            height: 118,
            width: 168,
          ),
        ],
      ),
      actions: <Widget>[
        CustomElevatedButton(
          height: 48.v,
          text: "Continue",
          margin: EdgeInsets.fromLTRB(22.h, 25.v, 22.h, 5.v),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
          onTap: () {
            navigateToNibssBvn(context);
            //Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return nibssDialog;
      },
    );
    //Navigator.of(context).pop();
  }

  navigateToNibssBvn(BuildContext context) {
    var nibssBvn = AlertDialog(
      content: SafeArea(
          child: Scaffold(
              body: SizedBox(
                  // width: 328.h,
                  //height: 449.h,
                  child: Column(children: [
                // Container(
                //     //width: 328.h,
                //     padding: EdgeInsets.symmetric(vertical: 1.v),
                //     decoration: AppDecoration.fillGray10005.copyWith(
                //         borderRadius: BorderRadiusStyle.customBorderTL3),
                //     child: CustomImageView(
                //         svgPath: ImageConstant.imgMaterialsymbol,
                //         height: 22.adaptSize,
                //         width: 22.adaptSize)),
                // SizedBox(height: 5.v),
                Container(
                    padding: EdgeInsets.symmetric(),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage17,
                          height: 55.v,
                          width: 115.h),
                      SizedBox(height: 11.v),
                      Text("NIBSS IDP Platform",
                          style: theme.textTheme.labelMedium),
                      SizedBox(height: 7.v),
                      Text("Input your BVN to verify your identity",
                          style: CustomTextStyles.bodySmall11),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: accountnumberController,
                          hintText: "BVN",
                          hintStyle:
                              CustomTextStyles.bodySmallRalewayBlack90001,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone),
                      Container(
                          width: 235.h,
                          margin:
                              EdgeInsets.only(left: 5.h, top: 7.v, right: 6.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "To continue NIBSS will share some of your information with Remita Payment Services Limited. Before continuing, you can review their ",
                                    style: CustomTextStyles.bodySmallLight),
                                TextSpan(
                                    text: "Privacy Policy ",
                                    style: CustomTextStyles
                                        .labelSmallInterLightgreen900),
                                TextSpan(
                                    text: "and ",
                                    style: CustomTextStyles.bodySmallLight),
                                TextSpan(
                                    text: "Terms of Service ",
                                    style: CustomTextStyles
                                        .labelSmallInterGreen900)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                          width: 108.h,
                          text: "NEXT",
                          buttonStyle: CustomButtonStyles.fillGreen,
                          buttonTextStyle:
                              CustomTextStyles.labelMediumWhiteA700,
                          onTap: () {
                            navigateToNibssDetails(context);
                          }),
                      SizedBox(height: 6.v),
                      SizedBox(
                          height: 12.v,
                          width: 57.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    height: 12.v,
                                    width: 19.h,
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.h),
                                                  decoration: AppDecoration
                                                      .fillLightGreen
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Text("1",
                                                      style: CustomTextStyles
                                                          .poppinsWhiteA700))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 1.v,
                                                  width: 12.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .lightGreen90001)))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 12.v,
                                    width: 19.h,
                                    margin: EdgeInsets.only(left: 14.h),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 3.h),
                                                  decoration: AppDecoration
                                                      .fillLightGreen
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Text("2",
                                                      style: CustomTextStyles
                                                          .poppinsWhiteA700))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 1.v,
                                                  width: 12.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .lightGreen90001)))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 12.v,
                                    width: 19.h,
                                    margin: EdgeInsets.only(right: 7.h),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 3.h),
                                                  decoration: AppDecoration
                                                      .fillBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Text("3",
                                                      style: CustomTextStyles
                                                          .poppinsLightgreen90001))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 1.v,
                                                  width: 12.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .blueGray100)))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 1.v),
                                    decoration: AppDecoration.fillBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Text("4",
                                        style: CustomTextStyles
                                            .poppinsLightgreen90001)))
                          ])),
                      SizedBox(height: 20.v)
                    ]))
              ])),
              bottomNavigationBar: Container(
                  margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                  decoration: AppDecoration.fillGray10005.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL3),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Can’t verify ID with BVN?",
                        style: theme.textTheme.labelMedium),
                    SizedBox(height: 3.v),
                    Text("Click here to signup without BVN",
                        style: CustomTextStyles.labelMediumTeal600
                            .copyWith(decoration: TextDecoration.underline))
                  ])))),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return nibssBvn;
      },
    );
    //Navigator.of(context).pop();
  }

  navigateToNibssDetails(BuildContext context) {
    var nibssDetails = AlertDialog(
      content: SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 328.h,
                  child: Column(children: [
                    Container(
                        width: 328.h,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillGray10005.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL3),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbol,
                            height: 22.adaptSize,
                            width: 22.adaptSize)),
                    SizedBox(height: 5.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.h, vertical: 24.v),
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage17,
                              height: 55.v,
                              width: 115.h),
                          SizedBox(height: 11.v),
                          Text("NIBSS IDP Platform",
                              style: theme.textTheme.labelMedium),
                          Container(
                              width: 223.h,
                              margin: EdgeInsets.only(
                                  left: 11.h, top: 6.v, right: 11.h),
                              child: Text(
                                  "These are the contact details from your BVN. Where do you want the OTP Delivered",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall11)),
                          SizedBox(height: 7.v),
                          CustomElevatedButton(
                              text: "0808****219",
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle: CustomTextStyles.bodySmall11,
                              onTap: () {
                                // onTapEightHundredEightThousandTwoHundredNineteen(
                                //     context);
                              }),
                          SizedBox(height: 7.v),
                          CustomElevatedButton(
                              text: "er******@gmail.com",
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle: CustomTextStyles.bodySmall11),
                          SizedBox(height: 7.v)
                        ]))
                  ])),
              bottomNavigationBar: Container(
                  margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                  decoration: AppDecoration.fillGray10005.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL3),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Can’t verify ID with BVN?",
                        style: theme.textTheme.labelMedium),
                    SizedBox(height: 3.v),
                    Text("Click here to signup without BVN",
                        style: CustomTextStyles.labelMediumTeal600
                            .copyWith(decoration: TextDecoration.underline))
                  ])))),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return nibssDetails;
      },
    );

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Close the first dialog
      navigateToNibssPin(context); // Show the second dialog
    });
  }

  navigateToNibssPin(BuildContext context) {
    var nibssPin = AlertDialog(
      content: SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 328.h,
                  child: SingleChildScrollView(child: Column(children: [
                    Container(
                        width: 300.h,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillGray10005.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL3),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbol,
                            height: 22.adaptSize,
                            width: 22.adaptSize)),
                    SizedBox(height: 5.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.h, vertical: 24.v),
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage17,
                              height: 55.v,
                              width: 115.h),
                          SizedBox(height: 11.v),
                          Text("NIBSS IDP Platform",
                              style: theme.textTheme.labelMedium),
                          Container(
                              width: 234.h,
                              margin: EdgeInsets.only(
                                  left: 5.h, top: 6.v, right: 6.h),
                              child: Text(
                                  "An SMS with a verification code was sent to 0808****219",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall11)),
                          SizedBox(height: 4.v),
                          CustomTextFormField(
                              controller: accountnumberController,
                              hintText: "otp",
                              hintStyle:
                              CustomTextStyles.bodySmallRalewayBlack90001,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone),
                          SizedBox(height: 4.v),
                          CustomElevatedButton(
                              width: 108.h,
                              text: "NEXT",
                              buttonStyle: CustomButtonStyles.fillGreen,
                              buttonTextStyle:
                              CustomTextStyles.labelMediumWhiteA700,
                              onTap: () {
                                navigateToNibssRemita(context);
                              }),
                          SizedBox(height: 5.v),
                          Text("OTP is valid for 5 minutes",
                              style: CustomTextStyles.bodySmallLight_1),
                          SizedBox(height: 4.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 36.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray30001.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("No OTP Recieved?",
                                        style: theme.textTheme.bodySmall),
                                    SizedBox(height: 5.v),
                                    CustomElevatedButton(
                                        text: "Try Another Way",
                                        buttonStyle:
                                        CustomButtonStyles.fillGreen,
                                        buttonTextStyle: CustomTextStyles
                                            .labelMediumWhiteA700,
                                        onTap: () {
                                          // onTapTryanotherway(context);
                                        })
                                  ])),
                          SizedBox(height: 36.v)
                        ]))
                  ]))),
              bottomNavigationBar: Container(
                  margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                  decoration: AppDecoration.fillGray10005.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL3),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Can’t verify ID with BVN?",
                        style: theme.textTheme.labelMedium),
                    SizedBox(height: 3.v),
                    Text("Click here to signup without BVN",
                        style: CustomTextStyles.labelMediumTeal600
                            .copyWith(decoration: TextDecoration.underline))
                  ])))),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return nibssPin;
      },
    );
  }

  navigateToNibssRemita(BuildContext context) {
    var nibssRemita = AlertDialog(
        content: SafeArea(
            child: Scaffold(
                body: SizedBox(
                    width: 328.h,
                    child: Column(children: [
                      Container(
                          width: 328.h,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: AppDecoration.fillGray10005.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL3),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgMaterialsymbol,
                              height: 22.adaptSize,
                              width: 22.adaptSize)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 328.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 24.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage17,
                                height: 55.v,
                                width: 115.h),
                            Padding(
                                padding: EdgeInsets.only(top: 19.v, right: 5.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage18,
                                            height: 54.v,
                                            width: 78.h),
                                        SizedBox(height: 5.v),
                                        Text("NIBSS PLC",
                                            style: theme.textTheme.labelMedium)
                                      ]),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: 24.v,
                                          width: 12.h,
                                          margin: EdgeInsets.only(
                                              left: 12.h,
                                              top: 25.v,
                                              bottom: 25.v),
                                          onTap: () {
                                            //onTapImgArrowleftone(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Column(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: 12.v,
                                                width: 30.h),
                                            SizedBox(height: 7.v),
                                            SizedBox(
                                                width: 46.h,
                                                child: Text(
                                                    "Remita Payment Services Limited",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.labelMedium))
                                          ]))
                                    ])),
                            Container(
                                width: 216.h,
                                margin: EdgeInsets.only(
                                    left: 31.h, top: 18.v, right: 29.h),
                                child: Text(
                                    "Remita Payment Services Limited is requesting to view and download your information",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodySmall11)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 21.h, top: 19.v, right: 21.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomElevatedButton(
                                          width: 60.h,
                                          text: "Don’t Allow",
                                          buttonStyle:
                                              CustomButtonStyles.fillGrayTL12,
                                          buttonTextStyle: CustomTextStyles
                                              .labelMediumGreen900),
                                      CustomElevatedButton(
                                          width: 57.h,
                                          text: "Allow",
                                          margin: EdgeInsets.only(left: 6.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillGreen,
                                          buttonTextStyle: CustomTextStyles
                                              .labelMediumWhiteA700,
                                          onTap: () {
                                            navigateToNibssComplete(context);
                                          })
                                    ])),
                            SizedBox(height: 15.v),
                            SizedBox(
                                height: 12.v,
                                width: 57.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              height: 12.v,
                                              width: 19.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.h),
                                                            decoration: AppDecoration
                                                                .fillLightGreen
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder8),
                                                            child: Text("1",
                                                                style: CustomTextStyles
                                                                    .poppinsWhiteA700))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height: 1.v,
                                                            width: 12.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .lightGreen90001)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              height: 12.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(left: 14.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h),
                                                            decoration: AppDecoration
                                                                .fillLightGreen
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder8),
                                                            child: Text("2",
                                                                style: CustomTextStyles
                                                                    .poppinsWhiteA700))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height: 1.v,
                                                            width: 12.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .lightGreen90001)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              height: 12.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(right: 7.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h),
                                                            decoration: AppDecoration
                                                                .fillLightGreen
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder8),
                                                            child: Text("3",
                                                                style: CustomTextStyles
                                                                    .poppinsWhiteA700))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height: 1.v,
                                                            width: 12.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .lightGreen90001)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Text("4",
                                                  style: CustomTextStyles
                                                      .poppinsLightgreen90001)))
                                    ])),
                            SizedBox(height: 14.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Privacy Policy",
                                          style: CustomTextStyles
                                              .bodySmallLight_1)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("Terms of Service",
                                          style: CustomTextStyles
                                              .bodySmallLight_1))
                                ]),
                            SizedBox(height: 9.v)
                          ]))
                    ])),
                bottomNavigationBar: Container(
                    margin:
                        EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                    decoration: AppDecoration.fillGray10005.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL3),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Can’t verify ID with BVN?",
                          style: theme.textTheme.labelMedium),
                      SizedBox(height: 3.v),
                      Text("Click here to signup without BVN",
                          style: CustomTextStyles.labelMediumTeal600
                              .copyWith(decoration: TextDecoration.underline))
                    ])))));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return nibssRemita;
      },
    );
  }

  navigateToNibssComplete(BuildContext context) {
    var nibssComplete = AlertDialog(
      content: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: 328.h,
            child: Column(
              children: [
                Container(
                  width: 328.h,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  decoration: AppDecoration.fillGray10005.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL3,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMaterialsymbol,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                  ),
                ),
                SizedBox(height: 5.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 42.h,
                    vertical: 24.v,
                  ),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage17,
                        height: 55.v,
                        width: 115.h,
                      ),
                      SizedBox(height: 11.v),
                      Text(
                        "Permission Granted",
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 24.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: 68.adaptSize,
                        width: 68.adaptSize,
                        radius: BorderRadius.circular(
                          34.h,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "You have been granted permission to read",
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 24.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(
              left: 69.h,
              right: 69.h,
              bottom: 8.v,
            ),
            decoration: AppDecoration.fillGray10005.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Can’t verify ID with BVN?",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Click here to signup without BVN",
                  style: CustomTextStyles.labelMediumTeal600.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return nibssComplete;
        });

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Close the first dialog
      //navigateToNibssPin(context); // Show the second dialog
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => KycOneeScreen(),
      ));
    });
  }
}
