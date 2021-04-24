import 'package:flutter/material.dart';
import 'package:lara_flutter/helpers/layout/device_size_constants.dart';
import 'package:lara_flutter/helpers/layout/responsive.dart';
import 'package:lara_flutter/modules/layout/components/side_menu.dart';

import '../components/view_color_bg.dart';
import '../constants/layout_constants.dart';

class AdminLayout extends StatelessWidget {
  final Widget view;
  AdminLayout({Key key, @required this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: _size.width > tabletLaptopBreakpoint
            ? null
            : AppBar(
                title: Center(
                  child: Text(
                    'Lara-Flutter',
                    style: kDrawerListTileTextStyle,
                  ),
                ),
                backgroundColor: kPrimaryColor,
              ),
        drawer: Container(
          width: 300,
          child: SideMenu(),
        ),
        body: Responsive(
          // Let's work on our mobile part
          mobile: ViewColorBg(
            view: view,
          ),
          tablet: ViewColorBg(
            view: view,
          ),
          laptop: Row(
            children: [
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
              Expanded(
                flex: 4,
                child: ViewColorBg(
                  view: view,
                ),
              ),
            ],
          ),
          desktop: Row(
            children: [
              // Once our width is less then 1300 then it start showing errors
              // Now there is no error if our width is less then 1340
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
              Expanded(
                flex: 5,
                child: ViewColorBg(
                  view: view,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
