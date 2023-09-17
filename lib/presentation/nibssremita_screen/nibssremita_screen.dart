import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class NibssremitaScreen extends StatelessWidget {
  const NibssremitaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
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
                                      width: 48.h,
                                      margin: EdgeInsets.only(
                                          left: 21.h, top: 25.v, bottom: 25.v),
                                      onTap: () {
                                        onTapImgArrowleftone(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 27.h),
                                      child: Column(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: 23.v,
                                            width: 85.h),
                                        SizedBox(height: 22.v),
                                        SizedBox(
                                            width: 94.h,
                                            child: Text(
                                                "Remita Payment Services Limited",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
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
                                      width: 114.h,
                                      text: "Don’t Allow",
                                      buttonStyle:
                                          CustomButtonStyles.fillGrayTL12,
                                      buttonTextStyle:
                                          CustomTextStyles.labelMediumGreen900),
                                  CustomElevatedButton(
                                      width: 113.h,
                                      text: "Allow",
                                      margin: EdgeInsets.only(left: 6.h),
                                      buttonStyle: CustomButtonStyles.fillGreen,
                                      buttonTextStyle:
                                          CustomTextStyles.labelMediumWhiteA700,
                                      onTap: () {
                                        onTapAllow(context);
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
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerRight,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerRight,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerRight,
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
                                              horizontal: 3.h, vertical: 1.v),
                                          decoration: AppDecoration.fillBlueGray
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
                                      style:
                                          CustomTextStyles.bodySmallLight_1)),
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text("Terms of Service",
                                      style: CustomTextStyles.bodySmallLight_1))
                            ]),
                        SizedBox(height: 9.v)
                      ]))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
                decoration: AppDecoration.fillGray10005
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderBL3),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Can’t verify ID with BVN?",
                      style: theme.textTheme.labelMedium),
                  SizedBox(height: 3.v),
                  Text("Click here to signup without BVN",
                      style: CustomTextStyles.labelMediumTeal600
                          .copyWith(decoration: TextDecoration.underline))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the nibsscompleteScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the nibsscompleteScreen.
  onTapAllow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nibsscompleteScreen);
  }
}
