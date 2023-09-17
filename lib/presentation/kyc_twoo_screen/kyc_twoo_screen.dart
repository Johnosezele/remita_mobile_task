import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_title.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_drop_down.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_outlined_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KycTwooScreen extends StatelessWidget {
  KycTwooScreen({Key? key}) : super(key: key);

  TextEditingController titlevalueoneController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 42.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 26.h, right: 26.h, bottom: 5.v),
                        child: Column(children: [
                          Column(children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.h, vertical: 9.v),
                                      decoration: AppDecoration.fillDeepOrange
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder21),
                                      child: Text("1",
                                          style: CustomTextStyles
                                              .titleSmallPoppins)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 9.v, bottom: 11.v),
                                      child: Text("Personal Information",
                                          style: CustomTextStyles
                                              .bodyMediumPoppins)),
                                  Spacer(),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 9.v),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder21),
                                          child: Text("2",
                                              style: CustomTextStyles
                                                  .titleSmallPoppinsDeeporange50001)))
                                ]),
                            SizedBox(height: 20.v),
                            Container(
                                width: 322.h,
                                decoration: AppDecoration.fillGray200,
                                child: SizedBox(width: 59.h, child: Divider()))
                          ]),
                          SizedBox(height: 20.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 16.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle1050,
                                              height: 61.adaptSize,
                                              width: 61.adaptSize,
                                              radius:
                                                  BorderRadius.circular(8.h)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDelete11,
                                              height: 12.adaptSize,
                                              width: 12.adaptSize)
                                        ]),
                                    SizedBox(height: 17.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("Title",
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
                                              controller:
                                                  titlevalueoneController,
                                              hintText: "Mr.",
                                              suffix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIcon)),
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
                                                child: Text("First Name",
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
                                              controller: firstNameController,
                                              hintText: "Ifeanyi",
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
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("Last Name",
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
                                              controller: lastNameController,
                                              hintText: "Jonathan",
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
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("Gender",
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
                                          CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFormsDropdownIcon)),
                                              hintText: "Male",
                                              items: dropdownItemList,
                                              onChanged: (value) {})
                                        ]),
                                    SizedBox(height: 23.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 4.v),
                                                child: Text("Date of Birth",
                                                    style: CustomTextStyles
                                                        .labelLargeBlack90002)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, bottom: 2.v),
                                                child: Text("*",
                                                    style: CustomTextStyles
                                                        .titleSmallRed800))
                                          ]),
                                          SizedBox(height: 4.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 13.v),
                                              decoration: AppDecoration
                                                  .outlineGray40003
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendarGray50001,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Text("24-07-1998",
                                                        style: CustomTextStyles
                                                            .bodyMediumPoppinsGray50001))
                                              ]))
                                        ]),
                                    SizedBox(height: 27.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2.v),
                                                child: Text("Phone Number",
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
                                              controller: phoneNumberController,
                                              hintText: "8082271199",
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumBlack90001,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.phone,
                                              prefix: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      16.h, 17.v, 8.h, 17.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgContrast)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 50.v),
                                              suffix: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 18.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSort)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight: 50.v),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 16.v))
                                        ]),
                                    SizedBox(height: 44.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomOutlinedButton(
                                              width: 112.h, text: "Back"),
                                          CustomElevatedButton(
                                              height: 46.v,
                                              width: 137.h,
                                              text: "Proceed",
                                          onTap: (){
                                                onTapProceed(context);
                          })
                                        ]),
                                    SizedBox(height: 67.v)
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
    Navigator.pushNamed(context, AppRoutes.kycFourrScreen);
  }
}
