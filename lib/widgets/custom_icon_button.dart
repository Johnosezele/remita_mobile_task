import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.gray50,
                    borderRadius: BorderRadius.circular(20.h),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.blueGray5002,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          6,
                          21,
                        ),
                      ),
                    ],
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50001.withOpacity(0.53),
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get outlineDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50001,
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange50001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.teal600,
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              19,
            ),
          ),
        ],
      );
}
