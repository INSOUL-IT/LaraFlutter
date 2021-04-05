import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget view;
  AppLayout({Key key, @required this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: Text(
            "LaraFlutter",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: view,
      ),
    );
  }
}
