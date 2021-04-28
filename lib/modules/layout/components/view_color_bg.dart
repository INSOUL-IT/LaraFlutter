import 'package:flutter/material.dart';

class ViewColorBg extends StatelessWidget {
  final Widget view;
  const ViewColorBg({Key key, this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.expand(),
      color: Color(0XAAE8E1F3),
      // color: Colors.amberAccent,
      child: view,
    );
  }
}
