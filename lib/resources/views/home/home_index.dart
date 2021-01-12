import 'package:flutter/material.dart';
class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
            SizedBox(
              height: 100,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.amber,
              minHeight: 10,
            ),
          ],
        ),
      ),
    );
  }
}
