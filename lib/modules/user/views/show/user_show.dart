import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/app_layout.dart';

import 'user_show_consumer.dart';

class UserShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
        view: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("User Details"),
          SizedBox(
            height: 50,
          ),
          UserShowConsumer(),
        ],
      ),
    ));
  }
}
