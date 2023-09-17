// import 'package:flutter/material.dart';
// import 'package:remita_test_ui/core/app_export.dart';
// import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
// import 'package:remita_test_ui/widgets/custom_outlined_button.dart';

// class NibssBvnScreen extends StatelessWidget {
//   const NibssBvnScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var nibssBvn = AlertDialog(
//     content: SafeArea(
//        child: Scaffold(
//             body: SizedBox(
//                 width: 328.h,
//                 child: Column(children: [
//                   Container(
//                       width: 328.h,
//                       padding: EdgeInsets.symmetric(vertical: 1.v),
//                       decoration: AppDecoration.fillGray10005.copyWith(
//                           borderRadius: BorderRadiusStyle.customBorderTL3),
//                       child: CustomImageView(
//                           svgPath: ImageConstant.imgMaterialsymbol,
//                           height: 22.adaptSize,
//                           width: 22.adaptSize)),
//                   SizedBox(height: 5.v),
//                   Container(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 40.h, vertical: 24.v),
//                       decoration: AppDecoration.fillWhiteA,
//                       child: Column(children: [
//                         CustomImageView(
//                             imagePath: ImageConstant.imgImage17,
//                             height: 55.v,
//                             width: 115.h),
//                         SizedBox(height: 11.v),
//                         Text("NIBSS IDP Platform",
//                             style: theme.textTheme.labelMedium),
//                         SizedBox(height: 7.v),
//                         Text("Input your BVN to verify your identity",
//                             style: CustomTextStyles.bodySmall11),
//                         SizedBox(height: 6.v),
//                         CustomOutlinedButton(
//                             height: 26.v,
//                             text: "20192991821",
//                             buttonStyle: CustomButtonStyles.outlineGreen,
//                             buttonTextStyle: theme.textTheme.labelMedium!),
//                         Container(
//                             width: 235.h,
//                             margin: EdgeInsets.only(
//                                 left: 5.h, top: 7.v, right: 6.h),
//                             child: RichText(
//                                 text: TextSpan(children: [
//                                   TextSpan(
//                                       text:
//                                           "To continue NIBSS will share some of your information with Remita Payment Services Limited. Before continuing, you can review their ",
//                                       style: CustomTextStyles.bodySmallLight),
//                                   TextSpan(
//                                       text: "Privacy Policy ",
//                                       style: CustomTextStyles
//                                           .labelSmallInterLightgreen900),
//                                   TextSpan(
//                                       text: "and ",
//                                       style: CustomTextStyles.bodySmallLight),
//                                   TextSpan(
//                                       text: "Terms of Service ",
//                                       style: CustomTextStyles
//                                           .labelSmallInterGreen900)
//                                 ]),
//                                 textAlign: TextAlign.center)),
//                         SizedBox(height: 11.v),
//                         CustomElevatedButton(
//                             width: 108.h,
//                             text: "NEXT",
//                             buttonStyle: CustomButtonStyles.fillGreen,
//                             buttonTextStyle:
//                                 CustomTextStyles.labelMediumWhiteA700,
//                             onTap: () {
//                               //o(context);
//                             }),
//                         SizedBox(height: 6.v),
//                         SizedBox(
//                             height: 12.v,
//                             width: 57.h,
//                             child: Stack(
//                                 alignment: Alignment.centerLeft,
//                                 children: [
//                                   Align(
//                                       alignment: Alignment.centerLeft,
//                                       child: SizedBox(
//                                           height: 12.v,
//                                           width: 19.h,
//                                           child: Stack(
//                                               alignment: Alignment.centerRight,
//                                               children: [
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerLeft,
//                                                     child: Container(
//                                                         padding: EdgeInsets
//                                                             .symmetric(
//                                                                 horizontal:
//                                                                     4.h),
//                                                         decoration: AppDecoration
//                                                             .fillLightGreen
//                                                             .copyWith(
//                                                                 borderRadius:
//                                                                     BorderRadiusStyle
//                                                                         .roundedBorder8),
//                                                         child: Text("1",
//                                                             style: CustomTextStyles
//                                                                 .poppinsWhiteA700))),
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerRight,
//                                                     child: Container(
//                                                         height: 1.v,
//                                                         width: 12.h,
//                                                         decoration: BoxDecoration(
//                                                             color: appTheme
//                                                                 .lightGreen90001)))
//                                               ]))),
//                                   Align(
//                                       alignment: Alignment.centerLeft,
//                                       child: Container(
//                                           height: 12.v,
//                                           width: 19.h,
//                                           margin: EdgeInsets.only(left: 14.h),
//                                           child: Stack(
//                                               alignment: Alignment.centerRight,
//                                               children: [
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerLeft,
//                                                     child: Container(
//                                                         padding: EdgeInsets
//                                                             .symmetric(
//                                                                 horizontal:
//                                                                     3.h),
//                                                         decoration: AppDecoration
//                                                             .fillLightGreen
//                                                             .copyWith(
//                                                                 borderRadius:
//                                                                     BorderRadiusStyle
//                                                                         .roundedBorder8),
//                                                         child: Text("2",
//                                                             style: CustomTextStyles
//                                                                 .poppinsWhiteA700))),
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerRight,
//                                                     child: Container(
//                                                         height: 1.v,
//                                                         width: 12.h,
//                                                         decoration: BoxDecoration(
//                                                             color: appTheme
//                                                                 .lightGreen90001)))
//                                               ]))),
//                                   Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Container(
//                                           height: 12.v,
//                                           width: 19.h,
//                                           margin: EdgeInsets.only(right: 7.h),
//                                           child: Stack(
//                                               alignment: Alignment.centerRight,
//                                               children: [
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerLeft,
//                                                     child: Container(
//                                                         padding: EdgeInsets
//                                                             .symmetric(
//                                                                 horizontal:
//                                                                     3.h),
//                                                         decoration: AppDecoration
//                                                             .fillBlueGray
//                                                             .copyWith(
//                                                                 borderRadius:
//                                                                     BorderRadiusStyle
//                                                                         .roundedBorder8),
//                                                         child: Text("3",
//                                                             style: CustomTextStyles
//                                                                 .poppinsLightgreen90001))),
//                                                 Align(
//                                                     alignment:
//                                                         Alignment.centerRight,
//                                                     child: Container(
//                                                         height: 1.v,
//                                                         width: 12.h,
//                                                         decoration: BoxDecoration(
//                                                             color: appTheme
//                                                                 .blueGray100)))
//                                               ]))),
//                                   Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 3.h, vertical: 1.v),
//                                           decoration: AppDecoration.fillBlueGray
//                                               .copyWith(
//                                                   borderRadius:
//                                                       BorderRadiusStyle
//                                                           .roundedBorder8),
//                                           child: Text("4",
//                                               style: CustomTextStyles
//                                                   .poppinsLightgreen90001)))
//                                 ])),
//                         SizedBox(height: 77.v)
//                       ]))
//                 ])),
//             bottomNavigationBar: Container(
//                 margin: EdgeInsets.only(left: 69.h, right: 69.h, bottom: 8.v),
//                 decoration: AppDecoration.fillGray10005
//                     .copyWith(borderRadius: BorderRadiusStyle.customBorderBL3),
//                 child: Column(mainAxisSize: MainAxisSize.min, children: [
//                   Text("Can’t verify ID with BVN?",
//                       style: theme.textTheme.labelMedium),
//                   SizedBox(height: 3.v),
//                   Text("Click here to signup without BVN",
//                       style: CustomTextStyles.labelMediumTeal600
//                           .copyWith(decoration: TextDecoration.underline))
//                 ])))
//     ),  
    
//     );
    
//   }

//   /// Navigates to the nibssdetailsScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the [Navigator] widget
//   /// to push the named route for the nibssdetailsScreen.
//   o(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.nibssdetailsScreen);
//   }
// }
