import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';
import 'package:provider/provider.dart';

class UserDeleteDialog extends StatelessWidget {
  final String name;
  final int id;
  UserDeleteDialog({this.id, this.name});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return AlertDialog(
          title: Text("Are you sure  ?"),
          content: Text("Confirm  Delete '$name' "),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            OutlinedButton(
              onPressed: () {
                stateInstance.selectedUserId = id;
                Navigator.pushNamed(context, userDelete);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
