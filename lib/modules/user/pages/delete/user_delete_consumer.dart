import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:provider/provider.dart';

class UserDeleteConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<UserState>().deleteUser();

    return Consumer<UserState>(
      builder: (context, userInstance, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userInstance.deleteStatus == false
                ? Text("Loading...")
                : Column(
                    children: [
                      Text("Successfully Deleted User"),
                    ],
                  ),
          ],
        );
        // return AlertDialog(
        //   title: userInstance.deleteStatus == false
        //       ? Text("Loading...")
        //       : Text("Successfully Deleted User."),
        //   // content: Text("Confirm  Delete '$name' "),
        //   actions: [
        //     OutlinedButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //         Navigator.pop(context);
        //         Navigator.pop(context);
        //       },
        //       child: Text('close'),
        //     ),
        //   ],
        // );
      },
    );
  }
}
