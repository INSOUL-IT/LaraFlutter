import 'package:flutter/material.dart';
import 'package:lara_flutter/routes/route_names.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Signup page'),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed(homeRoute),
              child: Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
