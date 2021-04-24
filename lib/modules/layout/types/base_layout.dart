import 'package:flutter/material.dart';
import 'package:ii_admin_layout/ii_admin_layout.dart';
import 'package:lara_flutter/routes/route_names.dart';

class BaseLayout extends StatelessWidget {
  final Widget page;
  BaseLayout({this.page});
  @override
  Widget build(BuildContext context) {
    List<dynamic> sideBarItems = [
      {
        'title': 'Dashboard',
        'icon': Icons.dashboard_sharp,
        'route': homeRoute,
      },
      {
        'title': 'User',
        'icon': Icons.person,
        'route': userIndex,
      },
      {
        'title': 'Products',
        'icon': Icons.shopping_bag,
        'route': counterIndex,
      },
      {
        'title': 'Category',
        'icon': Icons.category_rounded,
        'route': counterIndex,
      },
      {
        'title': 'Settings',
        'icon': Icons.settings,
        'route': counterIndex,
      },
    ];
    return AdminLayout(
      sideBarItems: sideBarItems,
      page: page,
    );
  }
}
