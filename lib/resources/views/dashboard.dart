import 'package:flutter/material.dart';
import 'package:lara_flutter/routes/route_names.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Dashboard Page'),
            RaisedButton(
              child: Text(' Back Home'),
              onPressed: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil(homeRoute, (_) => false),
            )
          ],
        ),
      ),
    );
  }
}
