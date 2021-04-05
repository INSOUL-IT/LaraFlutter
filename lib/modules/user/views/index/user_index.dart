import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/views/admin_layout.dart';
import 'package:lara_flutter/modules/user/views/index/user_index_consumer.dart';

class UserIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      view: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Users",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          UserIndexConsumer(),
        ],
      ),
    );
  }
}
