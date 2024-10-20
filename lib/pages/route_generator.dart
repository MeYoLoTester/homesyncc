import 'package:flutter/material.dart';
import 'package:homesync/pages/forgot.dart';
import 'package:homesync/pages/graph.dart';
import 'package:homesync/pages/home_screen.dart';
import 'package:homesync/pages/login.dart';
import 'package:homesync/pages/onboarding.dart';
import 'package:homesync/pages/signup.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/forget':
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case '/graph':
        return MaterialPageRoute(builder: (_) => EnergyAnalysisScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('No route defined for ${settings.name}'),
            ),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}