import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/resources/components/user_show_consumer.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';

class UserShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
        view: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("User Details"),
          SizedBox(height: 50,),
          UserShowConsumer(),
        ],
      ),
    ));
  }
}
