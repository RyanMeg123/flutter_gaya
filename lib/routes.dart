import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/features/home/views/home_page.dart';

import 'auth/views/login_page.dart';
import 'auth/views/register_email_page.dart';
import 'features/splash/views/splash_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String registerEmail = '/register_email';
  static const String homePage = '/home';
  static const String splash = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case registerEmail:
        return MaterialPageRoute(builder: (_) => const RegisterEmailPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const RegisterEmailPage());
    }
  }
}
