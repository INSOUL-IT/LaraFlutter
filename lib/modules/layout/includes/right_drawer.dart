import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/views/constants.dart';
import 'package:lara_flutter/routes/route_names.dart';

class RightDrawer extends StatelessWidget {
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
                onTap: () => Navigator.pushNamed(context, homeRoute),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text(
                  'Counter',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () => Navigator.pushNamed(context, counterIndex),
              ),
              ListTile(
                leading: Icon(Icons.usb),
                title: Text(
                  'User',
                  style: kDrawerListTileTextStyle,
                ),
                onTap: () => Navigator.pushNamed(context, userIndex),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
