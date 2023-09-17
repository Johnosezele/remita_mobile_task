import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileiconItemWidget extends StatelessWidget {
  const UserprofileiconItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBluegray5099.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              svgPath: ImageConstant.imgUserDeepOrange50001,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "Transfer Money",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              height: 1.40,
            ),
          ),
        ],
      ),
    );
  }
}
