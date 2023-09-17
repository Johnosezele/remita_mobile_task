import 'package:flutter/material.dart';
import 'package:remita_test_ui/presentation/create_password_one_screen/create_password_one_screen.dart';
import 'package:remita_test_ui/presentation/splash_screen/splash_screen.dart';
import 'package:remita_test_ui/presentation/terms_and_agreement_screen/terms_and_agreement_screen.dart';
import 'package:remita_test_ui/presentation/email_sign_up_screen/email_sign_up_screen.dart';
import 'package:remita_test_ui/presentation/bvn_sign_up_screen/bvn_sign_up_screen.dart';
import 'package:remita_test_ui/presentation/nibssdialog_screen/nibssdialog_screen.dart';
import 'package:remita_test_ui/presentation/nibssdetails_screen/nibssdetails_screen.dart';
import 'package:remita_test_ui/presentation/nibsspin_screen/nibsspin_screen.dart';
import 'package:remita_test_ui/presentation/nibssremita_screen/nibssremita_screen.dart';
import 'package:remita_test_ui/presentation/nibsscomplete_screen/nibsscomplete_screen.dart';
import 'package:remita_test_ui/presentation/nibsscontd_screen/nibsscontd_screen.dart';
import 'package:remita_test_ui/presentation/kyc_onee_screen/kyc_onee_screen.dart';
import 'package:remita_test_ui/presentation/kyc_twoo_screen/kyc_twoo_screen.dart';
import 'package:remita_test_ui/presentation/kyc_threee_screen/kyc_threee_screen.dart';
import 'package:remita_test_ui/presentation/kyc_fourr_screen/kyc_fourr_screen.dart';
import 'package:remita_test_ui/presentation/android_large_fourteen_screen/android_large_fourteen_screen.dart';
import 'package:remita_test_ui/presentation/android_large_fifteen_screen/android_large_fifteen_screen.dart';
import 'package:remita_test_ui/presentation/android_large_sixteen_screen/android_large_sixteen_screen.dart';
import 'package:remita_test_ui/presentation/android_large_eighteen_screen/android_large_eighteen_screen.dart';
import 'package:remita_test_ui/presentation/android_large_eightysix_screen/android_large_eightysix_screen.dart';
import 'package:remita_test_ui/presentation/create_enaira_bvn_sixtyone_screen/create_enaira_bvn_sixtyone_screen.dart';
import 'package:remita_test_ui/presentation/create_enaira_bvn_sixtytwo_screen/create_enaira_bvn_sixtytwo_screen.dart';
import 'package:remita_test_ui/presentation/main_dashboard_container_screen/main_dashboard_container_screen.dart';
import 'package:remita_test_ui/presentation/frame_9393_screen/frame_9393_screen.dart';
import 'package:remita_test_ui/presentation/frame_46652_screen/frame_46652_screen.dart';
import 'package:remita_test_ui/presentation/pin_alert_dialog_screen/pin_alert_dialog_screen.dart';
import 'package:remita_test_ui/presentation/frame_46656_screen/frame_46656_screen.dart';
import 'package:remita_test_ui/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:remita_test_ui/presentation/frame_screen/frame_screen.dart';
import 'package:remita_test_ui/presentation/frame_46653_screen/frame_46653_screen.dart';
import 'package:remita_test_ui/presentation/main_dashboard_one_screen/main_dashboard_one_screen.dart';
import 'package:remita_test_ui/presentation/kyc_lv2_submitted_for_manual_verification_screen/kyc_lv2_submitted_for_manual_verification_screen.dart';
import 'package:remita_test_ui/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/create_password_screen/create_password_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String termsAndAgreementScreen = '/terms_and_agreement_screen';

  static const String emailSignUpScreen = '/email_sign_up_screen';

  static const String bvnSignUpScreen = '/bvn_sign_up_screen';

  static const String nibssdialogScreen = '/nibssdialog_screen';

  static const String nibssdetailsScreen = '/nibssdetails_screen';

  static const String nibsspinScreen = '/nibsspin_screen';

  static const String nibssremitaScreen = '/nibssremita_screen';

  static const String nibsscompleteScreen = '/nibsscomplete_screen';

  static const String nibsscontdScreen = '/nibsscontd_screen';

  static const String kycOneeScreen = '/kyc_onee_screen';

  static const String kycTwooScreen = '/kyc_twoo_screen';

  static const String kycThreeeScreen = '/kyc_threee_screen';

  static const String kycFourrScreen = '/kyc_fourr_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String createPasswordOneScreen = '/create_password_one_screen';

  static const String androidLargeFourteenScreen =
      '/android_large_fourteen_screen';

  static const String androidLargeFifteenScreen =
      '/android_large_fifteen_screen';

  static const String androidLargeSixteenScreen =
      '/android_large_sixteen_screen';

  static const String androidLargeSeventeenPage =
      '/android_large_seventeen_page';

  static const String androidLargeEighteenScreen =
      '/android_large_eighteen_screen';

  static const String androidLargeEightysixScreen =
      '/android_large_eightysix_screen';

  static const String createEnairaBvnSixtyoneScreen =
      '/create_enaira_bvn_sixtyone_screen';

  static const String createEnairaBvnSixtytwoScreen =
      '/create_enaira_bvn_sixtytwo_screen';

  static const String mainDashboardPage = '/main_dashboard_page';

  static const String mainDashboardContainerScreen =
      '/main_dashboard_container_screen';

  static const String frame9393Screen = '/frame_9393_screen';

  static const String frame46652Screen = '/frame_46652_screen';

  static const String pinAlertDialogScreen = '/pin_alert_dialog_screen';

  static const String frame46656Screen = '/frame_46656_screen';

  static const String frameOneScreen = '/frame_one_screen';

  static const String frameScreen = '/frame_screen';

  static const String frame46653Screen = '/frame_46653_screen';

  static const String mainDashboardOneScreen = '/main_dashboard_one_screen';

  static const String kycLv2SubmittedForManualVerificationScreen =
      '/kyc_lv2_submitted_for_manual_verification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    termsAndAgreementScreen: (context) => TermsAndAgreementScreen(),
    emailSignUpScreen: (context) => EmailSignUpScreen(),
    bvnSignUpScreen: (context) => BvnSignUpScreen(),
    //nibssdialogScreen: (context) => NibssBvnScreen(),
    //nibssdetailsScreen: (context) => NibssdetailsScreen(),
    //nibsspinScreen: (context) => NibsspinScreen(),
    //nibssremitaScreen: (context) => NibssremitaScreen(),
    //nibsscompleteScreen: (context) => NibsscompleteScreen(),
    //nibsscontdScreen: (context) => NibsscontdScreen(),
    kycOneeScreen: (context) => KycOneeScreen(),
    kycTwooScreen: (context) => KycTwooScreen(),
    kycThreeeScreen: (context) => KycThreeeScreen(),
    kycFourrScreen: (context) => KycFourrScreen(),
    createPasswordScreen: (context) => CreatePasswordScreen(),
    createPasswordOneScreen: (context) => CreatePasswordOneScreen(),
    androidLargeFourteenScreen: (context) => AndroidLargeFourteenScreen(),
    androidLargeFifteenScreen: (context) => AndroidLargeFifteenScreen(),
    androidLargeSixteenScreen: (context) => AndroidLargeSixteenScreen(),
    androidLargeEighteenScreen: (context) => AndroidLargeEighteenScreen(),
    androidLargeEightysixScreen: (context) => AndroidLargeEightysixScreen(),
    createEnairaBvnSixtyoneScreen: (context) => CreateEnairaBvnSixtyoneScreen(),
    createEnairaBvnSixtytwoScreen: (context) => CreateEnairaBvnSixtytwoScreen(),
    mainDashboardContainerScreen: (context) => MainDashboardContainerScreen(),
    frame9393Screen: (context) => Frame9393Screen(),
    frame46652Screen: (context) => Frame46652Screen(),
    pinAlertDialogScreen: (context) => PinAlertDialogScreen(),
    frame46656Screen: (context) => Frame46656Screen(),
    frameOneScreen: (context) => FrameOneScreen(),
    frameScreen: (context) => FrameScreen(),
    frame46653Screen: (context) => Frame46653Screen(),
    mainDashboardOneScreen: (context) => MainDashboardOneScreen(),
    kycLv2SubmittedForManualVerificationScreen: (context) =>
        KycLv2SubmittedForManualVerificationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
