import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/types/base_admin_layout.dart';
import 'package:lara_flutter/routes/route_names.dart';

import 'user_delete_consumer.dart';

class UserDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseAdminLayout(
      section: "User",
      page: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UserDeleteConsumer(),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, userIndex);
            },
            child: Text('Go to user List'),
          ),
        ],
      ),
    );
  }
}
