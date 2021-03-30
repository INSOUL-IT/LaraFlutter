import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';

import 'package:provider/provider.dart';

class UserIndexConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<UserState>().getAllUser();

    final List<Map> users = List.generate(30, (i) {
      return {
        "name": "name $i",
        "email": "email $i",
      };
    });

    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            stateInstance.users == null
                ? Text("Loading...")
                : Column(
                    children: [
                      Table(
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'Email',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'Action',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                          ]),

                          for (int i = 0; i < stateInstance.users.length; i++)
                            TableRow(children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(stateInstance.users[i].name),
                                ),
                              ]),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(stateInstance.users[i].email),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.skip_next_rounded),
                                      tooltip: 'Show',
                                      onPressed: () {
                                        // Navigator.pushNamed(context, userShow);
                                        Navigator.pushNamed(context, userShow ,arguments: {'id': stateInstance.users[i].id});
                                      },
                                    ),
                                    SizedBox(width: 8.0,),
                                    IconButton(
                                      icon: const Icon(Icons.edit),
                                      tooltip: 'Edit',
                                      onPressed: () {},
                                    ),
                                    SizedBox(width: 8.0,),
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      tooltip: 'Delete',
                                      onPressed: () {},
                                    ),
                                  ]),
                            ]),
                        ],
                      ),
                    ],
                  ),
          ],
        );
      },
    );
  }
}
