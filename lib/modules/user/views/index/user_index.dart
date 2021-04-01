import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/app_layout.dart';

import 'user_index_consumer.dart';

class UserIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
