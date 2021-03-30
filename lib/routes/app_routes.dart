import 'package:flutter/material.dart';
import 'package:lara_flutter/app/controllers/counter_controller.dart';
import 'package:lara_flutter/app/controllers/home_controller.dart';
import 'package:lara_flutter/app/controllers/post_controller.dart';
import 'package:lara_flutter/modules/user/controllers/user_controller.dart';
import 'package:lara_flutter/resources/views/error/error_index.dart';
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

      case apiProvider:
        return _go(HomeController().movie());

      case postIndex:
        return _go(PostController().index());

      case postShow:
        return _go(PostController().show());

      case userIndex:
        return _go(UserController().index());

      case userShow:
        return _go(UserController().show(arg['id']));

      default:
        return _go(ErrorIndex());
    }


  }


}


