import 'package:flutter/material.dart';
import 'package:route_generator/route/route_names.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final List<Map<String, dynamic>> passdata;
  LoginPage({@required this.passdata});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Login Page'),
            Text('Login Page Data: $passdata'),
            RaisedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, homeRoute),
              child: Text('Back to home'),
            ),
            RaisedButton(
              child: Text('Pop em all.'),
              onPressed: () => Navigator.popUntil(
                context,
                ModalRoute.withName(homeRoute),
              ),
            ),
            RaisedButton(
              child: Text('Pop home.'),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                // ModalRoute.withName('/'),
                (Route<dynamic> route) => false,
              ),
            ),
            RaisedButton(
              child: Text('final home.'),
              onPressed: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil(homeRoute, (_) => false),
            ),
          ],
        ),
      ),
    );
  }
}
