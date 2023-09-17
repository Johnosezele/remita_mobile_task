import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_subtitle.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_drop_down.dart';
import 'package:remita_test_ui/widgets/custom_elevated_button.dart';
import 'package:remita_test_ui/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeFourteenScreen extends StatelessWidget {
  AndroidLargeFourteenScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 68.v,
                leadingWidth: 32.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin:
                        EdgeInsets.only(left: 24.h, top: 37.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Fund My Bank Account",
                    margin: EdgeInsets.only(top: 35.v, bottom: 12.v)),
                styleType: Style.bgShadow_1),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 20.h, right: 20.h, bottom: 5.v),
                        child: Column(children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 16.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomDropDown(
                                        icon: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 21.v, 16.h, 21.v),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(1.h)),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPath)),
                                        hintText: "Select Wallet",
                                        hintStyle:
                                            CustomTextStyles.bodyMedium14,
                                        items: dropdownItemList,
                                        borderDecoration:
                                            DropDownStyleHelper.fillGray,
                                        fillColor: appTheme.gray10002,
                                        onChanged: (value) {}),
                                    SizedBox(height: 16.v),
                                    CustomTextFormField(
                                        controller: amountController,
                                        hintText: "Enter Amount",
                                        hintStyle:
                                            CustomTextStyles.bodyMedium14,
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillGrayTL5,
                                        fillColor: appTheme.gray10002)
                                  ])),
                          SizedBox(height: 40.v),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  height: 44.v,
                                  width: 133.h,
                                  text: "Proceed",
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle: theme.textTheme.titleSmall!))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
