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
                Container(
                  height: 50.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "BUTTON",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
