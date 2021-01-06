import 'package:flutter/material.dart';

import 'package:lara_flutter/app/controllers/login_controller.dart';
import 'package:lara_flutter/app/middleware/auth_middleware.dart';
import 'package:lara_flutter/resources/views/content_a.dart';
import 'package:lara_flutter/resources/views/content_b.dart';
import 'package:lara_flutter/resources/views/dashboard.dart';
import 'package:lara_flutter/resources/views/error_page.dart';
import 'package:lara_flutter/resources/views/home_page.dart';
import 'package:lara_flutter/resources/views/login.dart';
import 'package:lara_flutter/resources/views/signup.dart';
import 'package:lara_flutter/routes/route_names.dart';


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
