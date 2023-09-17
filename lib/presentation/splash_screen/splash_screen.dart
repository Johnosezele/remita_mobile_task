import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remita_test_ui/core/app_export.dart';
import 'package:remita_test_ui/presentation/terms_and_agreement_screen/terms_and_agreement_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key})
//       : super(
//           key: key,
//         );
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay and navigate to the main screen after the splash screen is displayed
    Timer(Duration(seconds: 2), () {
      // Replace 'YourMainScreen()' with the widget you want to navigate to after the splash screen.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => TermsAndAgreementScreen(),
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: double.maxFinite,
          ),
        ),
      ),
    );
  }
}
