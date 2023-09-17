import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_title.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_drop_down.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_icon_button.dart';
import 'package:remita_test_ui/widgets/custom_outlined_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KycFourrScreen extends StatelessWidget {
  KycFourrScreen({Key? key}) : super(key: key);

  TextEditingController addressController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController stateoforiginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 30.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 52.v, bottom: 24.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(
                    text: "Step 1 of 3\nTell us more about yourself",
                    margin: EdgeInsets.only(top: 43.v, bottom: 10.v)),
                styleType: Style.bgShadow),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 42.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 26.h, right: 26.h, bottom: 5.v),
                        child: Column(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Opacity(
                                      opacity: 0.5,
                                      child: CustomIconButton(
                                          height: 42.adaptSize,
                                          width: 42.adaptSize,
                                          padding: EdgeInsets.all(13.h),
                                          decoration: IconButtonStyleHelper
                                              .fillDeepOrange,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkWhiteA700))),
                                  Container(
                                      margin: EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 9.v),
                                      decoration: AppDecoration.fillDeepOrange
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder21),
                                      child: Text("2",
                                          style: CustomTextStyles
                                              .titleSmallPoppins)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 9.v, bottom: 11.v),
                                      child: Text("Address",
                                          style: CustomTextStyles
                                              .bodyMediumPoppins))
                                ]),
                                SizedBox(height: 20.v),
                                Divider()
                              ]),
                          SizedBox(height: 21.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 17.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text(
                                                    "Residential Address",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 2.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 8.v),
                                          CustomTextFormField(
                                              controller: addressController,
                                              hintText:
                                                  "2, Toyin street, Off Ademola Ade...",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              contentPadding:
                                                  EdgeInsets.all(16.h))
                                        ]),
                                    SizedBox(height: 21.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 3.v),
                                                child: Text(
                                                    "Country of Residence",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 3.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 7.v),
                                          CustomTextFormField(
                                              controller: countryController,
                                              hintText: "Nigeria",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              suffix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIconBlack90002)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight: 50.v),
                                              contentPadding: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 16.v,
                                                  bottom: 16.v))
                                        ]),
                                    SizedBox(height: 21.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("State",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 2.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 8.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 14.v),
                                              decoration: AppDecoration
                                                  .outlineGray50001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 3.v),
                                                        child: Text("Lagos",
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack90001)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFormsDropdownIconBlack90002,
                                                        height: 13.v,
                                                        width: 10.h,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v,
                                                            right: 14.h,
                                                            bottom: 3.v))
                                                  ]))
                                        ]),
                                    SizedBox(height: 21.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 4.v),
                                                child: Text("City",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 4.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 3.v),
                                          CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIconBlack90002)),
                                              hintText: "Alausa",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              items: dropdownItemList,
                                              onChanged: (value) {})
                                        ]),
                                    SizedBox(height: 25.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("Local Government",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 2.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 4.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 15.v),
                                              decoration: AppDecoration
                                                  .outlineGray50001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Text("Ikeja",
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack90001)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFormsDropdownIconBlack90002,
                                                        height: 13.v,
                                                        width: 10.h,
                                                        margin: EdgeInsets.only(
                                                            top: 2.v,
                                                            right: 14.h,
                                                            bottom: 3.v))
                                                  ]))
                                        ]),
                                    SizedBox(height: 25.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 3.v),
                                                child: Text("Country of Birth",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 3.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 3.v),
                                          CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIconBlack90002)),
                                              hintText: "Nigeria",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              items: dropdownItemList1,
                                              onChanged: (value) {})
                                        ]),
                                    SizedBox(height: 25.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 3.v),
                                                child: Text("State of Origin",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 3.v),
                                                child: Text("*",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]),
                                          SizedBox(height: 3.v),
                                          CustomTextFormField(
                                              controller:
                                                  stateoforiginController,
                                              hintText: "Ondo",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              textInputAction:
                                                  TextInputAction.done,
                                              suffix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIconBlack90002)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight: 50.v),
                                              contentPadding: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 16.v,
                                                  bottom: 16.v))
                                        ]),
                                    SizedBox(height: 48.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomOutlinedButton(
                                              width: 112.h, text: "Back"),
                                          CustomElevatedButton(
                                              height: 46.v,
                                              width: 137.h,
                                              text: "Proceed")
                                        ]),
                                    SizedBox(height: 44.v)
                                  ]))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
  onTapProceed(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.createPasswordOneScreen);
  }
}
