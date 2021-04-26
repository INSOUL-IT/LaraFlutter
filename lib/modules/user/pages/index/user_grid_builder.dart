import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';

import 'user_list_card.dart';

class UserGridBuilder extends StatelessWidget {
  final List<UserModel> users;
  final int crossAxisCount;
  const UserGridBuilder({
    this.users,
    this.crossAxisCount,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GridView.count(
        childAspectRatio: 3,
        crossAxisCount: crossAxisCount,
        shrinkWrap: true,
        children: List.generate(this.users.length, (index) {
          return UserListCard(
            id: users[index].id,
            name: users[index].name,
            email: users[index].email,
          );
        }),
      ),
    );
  }
}
