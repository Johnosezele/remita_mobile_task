import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/android_large_seventeen_page/android_large_seventeen_page.dart';
import 'package:remita_test_ui/presentation/main_dashboard_page/main_dashboard_page.dart';
import 'package:remita_test_ui/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MainDashboardContainerScreen extends StatelessWidget {
  MainDashboardContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.mainDashboardPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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
