import 'package:flutter/material.dart';
import 'package:lara_flutter/config/constants/constants.dart';
import 'package:lara_flutter/resources/widgets/nav/drawer_index.dart';

class AppLayout extends StatelessWidget {
  final Widget view;
  AppLayout({ Key key, @required this.view }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        endDrawer: DrawerIndex(),
        appBar: AppBar(
          title: Center(
            child: Text(
              'LARA-FLUTTER',
              style: kDrawerListTileTextStyle,
            ),
          ),
          backgroundColor: kPrimaryColor,
        ),
        body: Container(
          height: size.height,
          width: double.infinity,
          child: view,
        ),
      ),
    );
  }
}