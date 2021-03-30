import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/resources/components/user_index_consumer.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';
import 'package:lara_flutter/routes/route_names.dart';

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
