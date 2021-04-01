import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';

import 'package:provider/provider.dart';

import 'user_list_card.dart';

class UserIndexConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<UserState>().getAllUser();

    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            stateInstance.users == null
                ? Text("Loading...")
                : Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .70,
                        child: GridView.count(
                          childAspectRatio: 4,
                          crossAxisCount: 4,
                          mainAxisSpacing: 16.0,
                          crossAxisSpacing: 16.0,
                          children: List.generate(stateInstance.users.length,
                              (index) {
                            return UserListCard(
                              id: stateInstance.users[index].id,
                              name: stateInstance.users[index].name,
                              email: stateInstance.users[index].email,
                            );
                          }),
                        ),
                      )
                    ],
                  ),
          ],
        );
      },
    );
  }
}
