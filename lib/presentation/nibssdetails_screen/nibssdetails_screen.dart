import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class NibssdetailsScreen extends StatelessWidget {
  const NibssdetailsScreen({Key? key}) : super(key: key);

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
                              onTapEightHundredEightThousandTwoHundredNineteen(
                                  context);
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

  onTapEightHundredEightThousandTwoHundredNineteen(BuildContext context) {
    // TODO: implement Actions
  }
}
