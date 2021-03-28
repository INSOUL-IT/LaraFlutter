import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';

import 'package:provider/provider.dart';

class UserConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    context.read<UserState>().getUser();

    return Consumer<UserState>(
      builder: (context, userInstance, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userInstance.user == null ? Text("Loading...") : Text("${userInstance.user.name}"),
          ],
        );
      },
    );
  }
}