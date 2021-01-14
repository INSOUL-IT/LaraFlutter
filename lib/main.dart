import 'package:flutter/material.dart';
import 'package:lara_flutter/config/state/state_registration.dart';
import 'package:provider/provider.dart';
import 'routes/route_names.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: StateRegistration().stateList(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LaraFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: AppRoutes().generateRoute,
    );
  }
}
