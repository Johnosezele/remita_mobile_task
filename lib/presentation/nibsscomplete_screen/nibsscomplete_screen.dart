import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';

class NibsscompleteScreen extends StatelessWidget {
  const NibsscompleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
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
    );
  }
}
