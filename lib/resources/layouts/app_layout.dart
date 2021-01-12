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
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.2,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: size.width * 0.1,
                ),
              ),
              view,
            ],
          ),
        ),
      ),
    );
  }
}