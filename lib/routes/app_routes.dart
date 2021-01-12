import 'package:flutter/material.dart';
import 'package:lara_flutter/app/controllers/home_controller.dart';
import 'package:lara_flutter/resources/views/error/error_index.dart';
import 'package:lara_flutter/routes/route_names.dart';


class AppRoutes {
  Route<dynamic> generateRoute(RouteSettings settings) {

    PageRoute _go(Widget child) {
      return MaterialPageRoute(builder: (context) => child);
    }

    switch (settings.name) {

      case homeRoute:
        return _go(HomeController().index());


      default:
        return _go(ErrorIndex());
    }


  }


}
