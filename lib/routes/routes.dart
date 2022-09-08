import 'package:flutter/material.dart';
import 'package:tpg_final_exam/pages/login.dart';
import 'package:tpg_final_exam/pages/main_page.dart';
import 'package:tpg_final_exam/pages/settings.dart';


class RouteManager {
  static const String loginPage = '/';
  static const String mainPage = '/mainPage';
  static const String settingsPage = '/settingsPage';
  static const String splashPage = '/splashPage';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => Login(),
        );

      case mainPage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );

      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );

        case splashPage:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
