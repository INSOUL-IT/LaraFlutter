import 'package:flutter/material.dart';
import 'package:lara_flutter/routes/route_names.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> myMap = [
    {'id': 1, 'name': 'hello'},
    {'id': 2, 'name': 'hello2'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('Home Page'),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, login,
                  arguments: {'name': myMap}),
              child: Text('Login Page'),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed(signup),
              child: Text('Signup Page'),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed(dashboard),
              child: Text('Dashboard Page'),
            ),
          ],
        ),
      ),
    );
  }
}
