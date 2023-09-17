import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class SliderzeroItemWidget extends StatelessWidget {
  const SliderzeroItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 25.v),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: AppDecoration.outlineBluegray5001,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 117.v,
                      width: 315.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame7956,
                            height: 117.v,
                            width: 315.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Olatunji Oke",
                                    style: CustomTextStyles
                                        .labelLargeInterGray80002SemiBold,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.h,
                                      top: 5.v,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text(
                                            "₦",
                                            style: CustomTextStyles
                                                .headlineMediumRaleway,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 14.h),
                                          child: Text(
                                            "0.00",
                                            style:
                                                theme.textTheme.headlineMedium,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgComponent2,
                                          height: 31.adaptSize,
                                          width: 31.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 7.h,
                                            top: 1.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 9.v),
                                        child: Text(
                                          "Globus Bank:",
                                          style: CustomTextStyles
                                              .labelMediumGray80002,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 2.h,
                                          top: 9.v,
                                          bottom: 9.v,
                                        ),
                                        child: Text(
                                          "595****235",
                                          style: CustomTextStyles
                                              .labelMediumGray8000210,
                                        ),
                                      ),
                                      CustomOutlinedButton(
                                        height: 32.v,
                                        width: 134.h,
                                        text: "Fund My Account",
                                        margin: EdgeInsets.only(left: 29.h),
                                        buttonStyle:
                                            CustomButtonStyles.outlinePrimary,
                                        buttonTextStyle: CustomTextStyles
                                            .labelLargeInterPrimary,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame7956,
                      height: 110.v,
                      width: 319.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 117.v,
              width: 319.h,
              margin: EdgeInsets.only(left: 8.h),
              decoration: BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
