import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/resources/components/user_card.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';

import 'package:provider/provider.dart';

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
                          crossAxisCount:4,
                          mainAxisSpacing: 16.0,
                          crossAxisSpacing: 16.0,
                          children: List.generate(stateInstance.users.length,
                              (index) {
                            return UserCard(
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
