import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';

class Frame46652Screen extends StatelessWidget {
  const Frame46652Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: 270.h,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 40.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgClock,
                height: 60.v,
                width: 85.h,
              ),
              SizedBox(height: 26.v),
              SizedBox(
                width: 128.h,
                child: Text(
                  "eNaira Wallet Created Succesfully",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBlack90002,
                ),
              ),
              SizedBox(height: 23.v),
              Text(
                "Wallet ID",
                style: CustomTextStyles.titleSmallBlack90002,
              ),
              SizedBox(height: 8.v),
              Text(
                "0192911092",
                style: CustomTextStyles.titleSmallBlack90002Bold,
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 49.v,
                text: "Go to Dashboard",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
