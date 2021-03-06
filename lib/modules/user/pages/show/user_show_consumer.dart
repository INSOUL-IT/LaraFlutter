import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:provider/provider.dart';

import 'user_card.dart';

class UserShowConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<UserState>().getUser();

    return Consumer<UserState>(
      builder: (context, userInstance, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userInstance.user == null
                ? Text("Loading...")
                : Column(
                    children: [
                      Container(
                        width: 600,
                        child: UserCard(
                          id: userInstance.user.id,
                          name: userInstance.user.name,
                          email: userInstance.user.email,
                        ),
                      ),
                    ],
                  ),
          ],
        );
      },
    );
  }
}
