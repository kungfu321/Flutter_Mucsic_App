import 'package:Flutter_Mucsic_App/screens/browse_screen.dart';
import 'package:Flutter_Mucsic_App/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String onboarding = '/onboarding';
  static const String browse = '/browse';

  static final routes = <String, WidgetBuilder>{
    onboarding: (BuildContext context) => OnboardingScreen(),
    browse: (BuildContext context) => BrowseScreen()
  };
}
