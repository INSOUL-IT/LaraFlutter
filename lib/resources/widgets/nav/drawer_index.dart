import 'package:flutter/material.dart';
import 'package:lara_flutter/config/constants/constants.dart';

class DrawerIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Container(
                  child: Center(child: Image.asset('assets/images/logo.png')),
                  height: 120,
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text(
                  'Categories',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.speed),
                title: Text(
                  'Seeds',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text(
                  'Language',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () {

                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
