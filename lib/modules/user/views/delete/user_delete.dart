import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/views/admin_layout.dart';
import 'package:lara_flutter/modules/user/views/delete/user_delete_consumer.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      view: Column(
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
