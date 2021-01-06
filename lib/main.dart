import 'package:flutter/material.dart';
import 'package:route_generator/resources/layouts/guest_layout.dart';
import 'package:route_generator/route/app_routes.dart';
import 'package:route_generator/route/route_names.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: AppRoutes().generateRoute,
      // home: HomePage(),
      home: GuestLayout(),
    );
  }
}
