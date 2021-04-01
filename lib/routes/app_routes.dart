import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/counter/counter_controller.dart';
import 'package:lara_flutter/modules/error/error.dart';
import 'package:lara_flutter/modules/home/home_controller.dart';
import 'package:lara_flutter/modules/user/controllers/user_controller.dart';
import 'package:lara_flutter/routes/route_names.dart';

class AppRoutes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    Map arg = settings.arguments;

    PageRoute _go(Widget child) {
      return MaterialPageRoute(builder: (context) => child);
    }

    switch (settings.name) {
      case homeRoute:
        return _go(UserController().index());
      // return _go(HomeController().index());

      case counterIndex:
        return _go(CounterController().index());

      case userIndex:
        return _go(UserController().index());

      case userShow:
        return _go(UserController().show());

      case userDelete:
        return _go(UserController().delete());

      default:
        return _go(Error());
    }
  }
}
