import 'package:flutter/material.dart';
import 'package:ii_admin_layout/ii_admin_layout.dart';
import 'package:lara_flutter/modules/home/components/dashboard_info_card.dart';

class DashboardIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> sideBarItems = [
      {
        'title': 'Dashboard',
        'icon': Icons.dashboard_sharp,
      },
      {
        'title': 'User',
        'icon': Icons.person,
      },
      {
        'title': 'Products',
        'icon': Icons.shopping_bag,
      },
      {
        'title': 'Category',
        'icon': Icons.category_rounded,
      },
      {
        'title': 'Settings',
        'icon': Icons.settings,
      },
    ];

    return AdminLayout(
      sideBarItems: sideBarItems,
      page: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              DashboardInfoCard(
                title: "Users",
                value: 200,
                iconData: Icons.account_circle_rounded,
              ),
              DashboardInfoCard(
                title: "Orders",
                value: 20,
                iconData: Icons.offline_pin_rounded,
              ),
              DashboardInfoCard(
                title: "Pending",
                value: 10,
                iconData: Icons.account_circle_rounded,
              ),
              DashboardInfoCard(
                title: "Completed",
                value: 100,
                iconData: Icons.account_circle_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
