import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: this.height ?? 26.v,
        width: this.width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: isDisabled ?? false ? null : onTap ?? () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (leftIcon != null) // Only include left icon if it's not null
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0), // Add spacing
                    child: leftIcon,
                  ),
                Flexible( // Use Flexible to ensure text and right icon fit within the button
                  child: Text(
                    text,
                    style: buttonTextStyle ?? CustomTextStyles.titleMediumWhiteA700Medium16,
                    overflow: TextOverflow.ellipsis, // Handle text overflow
                    maxLines: 1, // Limit to a single line
                  ),
                ),
                if (rightIcon != null) // Only include right icon if it's not null
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0), // Add spacing
                    child: rightIcon,
                  ),
              ],
            ),
          ),
        ),
  );
}
