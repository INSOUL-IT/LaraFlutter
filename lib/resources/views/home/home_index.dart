import 'package:flutter/material.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';
class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            backgroundColor: Colors.amber,
            strokeWidth: 100,
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "LARA-FLUTTER",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.amber,
            minHeight: 10,
          ),
        ],
      ),
    );
  }
}