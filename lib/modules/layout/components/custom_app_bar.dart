import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/constants/layout_constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          'RequireShop',
          style: kDrawerListTileTextStyle,
        ),
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
