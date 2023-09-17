import '../main_dashboard_one_screen/widgets/sliderzero_item_widget.dart';
import '../main_dashboard_one_screen/widgets/userprofilecolu_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/android_large_seventeen_page/android_large_seventeen_page.dart';
import 'package:remita_test_ui/presentation/main_dashboard_page/main_dashboard_page.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image_1.dart';
import 'package:remita_test_ui/widgets/app_bar/appbar_image_2.dart';
import 'package:remita_test_ui/widgets/app_bar/custom_app_bar.dart';
import 'package:remita_test_ui/widgets/custom_bottom_bar.dart';
import 'package:remita_test_ui/widgets/custom_drop_down.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainDashboardOneScreen extends StatelessWidget {
  MainDashboardOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 69.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgDashiconsmenualt3,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarImage1(
            svgPath: ImageConstant.imgRemitalogo,
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgCodiconmail,
              margin: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 20.h, 17.v),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                    ),
                    hintText: "YANG(yangmail@mail.com)",
                    items: dropdownItemList,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(20.h, 14.v, 30.h, 14.v),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgUser,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 39.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                    borderDecoration: DropDownStyleHelper.fillGrayTL4,
                    fillColor: appTheme.gray50,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 11.v),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 142.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (
                        index,
                        reason,
                      ) {
                        sliderIndex = index;
                      },
                    ),
                    itemCount: 1,
                    itemBuilder: (context, index, realIndex) {
                      return SliderzeroItemWidget();
                    },
                  ),
                  SizedBox(
                    height: 5.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Color(0X1212121D),
                        dotHeight: 5.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 86.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 8.h,
                      crossAxisSpacing: 8.h,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return UserprofilecoluItemWidget();
                    },
                  ),
                  SizedBox(height: 8.v),
                  SizedBox(
                    height: 67.v,
                    width: 320.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1827,
                          height: 67.v,
                          width: 320.h,
                          radius: BorderRadius.circular(
                            9.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIcroundcancel,
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            right: 10.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.mainDashboardPage;
      case BottomBarEnum.Inbox:
        return "/";
      case BottomBarEnum.Gethelp:
        return AppRoutes.androidLargeSeventeenPage;
      case BottomBarEnum.Menu:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainDashboardPage:
        return MainDashboardPage();
      case AppRoutes.androidLargeSeventeenPage:
        return AndroidLargeSeventeenPage();
      default:
        return DefaultWidget();
    }
  }
}
