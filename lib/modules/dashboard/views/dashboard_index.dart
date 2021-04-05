import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/home/components/dashboard_info_card.dart';
import 'package:lara_flutter/modules/layout/views/admin_layout.dart';

class DashboardIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      view: Column(
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
