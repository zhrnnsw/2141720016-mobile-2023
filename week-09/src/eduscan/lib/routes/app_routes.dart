import 'package:flutter/material.dart';
import 'package:eduscan/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:eduscan/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:eduscan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
