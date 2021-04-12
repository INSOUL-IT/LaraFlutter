import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/constants/layout_constants.dart';
import 'package:lara_flutter/routes/route_names.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: Color(0XFFFFFFFF),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      child:
                          Center(child: Image.asset('assets/images/logo.png')),
                      height: 120,
                    ),
                  ],
                ),
                SizedBox(height: 50),

                SizedBox(height: kDefaultPadding * 2),
                // Menu Items
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: kDrawerListTileTextStyle,
                  ),
                  onTap: () => Navigator.pushNamed(context, homeRoute),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(
                    'Users',
                    style: kDrawerListTileTextStyle,
                  ),
                  onTap: () => Navigator.pushNamed(context, userIndex),
                ),

                SizedBox(height: kDefaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
