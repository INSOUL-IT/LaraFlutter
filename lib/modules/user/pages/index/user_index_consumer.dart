import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:provider/provider.dart';

import 'user_grid_builder.dart';

class UserIndexConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<UserState>().getAllUser();

    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return stateInstance.users == null
            ? Text("Loading...")
            : UserGridBuilder(users: stateInstance.users);
      },
    );
  }
}
