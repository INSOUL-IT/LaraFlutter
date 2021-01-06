import 'package:flutter/material.dart';
import 'package:route_generator/controllers/login_controller.dart';
import 'package:route_generator/middleware/auth_middleware.dart';
import 'package:route_generator/route/route_names.dart';
import 'package:route_generator/screens/content_a.dart';
import 'package:route_generator/screens/content_b.dart';
import 'package:route_generator/screens/dashboard.dart';
import 'package:route_generator/screens/error_page.dart';
import 'package:route_generator/screens/home_page.dart';
import 'package:route_generator/screens/login.dart';
import 'package:route_generator/screens/signup.dart';

class AppRoutes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    Map arg = settings.arguments;
    bool authRes = AuthMiddleware().isAuthCheck();

    switch (settings.name) {
      case homeRoute:
        return _goRoute(ContentA());
      case routea:
        return _goRoute(ContentB());
      case routeb:
        return _goRoute(HomePage());

      case login:
        return _goRoute(LoginPage(passdata: arg['name']));

      case signup:
        return _goRoute(LoginController().index());

      case dashboard:
        return authRes ? _goRoute(DashboardPage()) : _goRoute(SignupPage());

      default:
        return _goRoute(ErrorPage());
    }
  }

  PageRoute _goRoute(Widget child) {
    return MaterialPageRoute(builder: (context) => child);
  }
}
