import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';
import 'package:provider/provider.dart';

import 'user_delete_dialog.dart';

class UserListCard extends StatelessWidget {
  final int id;
  final String name;
  final String email;
  UserListCard({this.name, this.email, this.id});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.network(
                      'https://res.cloudinary.com/dtbudl0yx/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/wp-content/uploads/2019/10/user-1633249_1280-768x749.png'),
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  email,
                  style: TextStyle(color: Colors.black),
                ),
                trailing: PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.account_circle_rounded),
                        title: Text('Profile'),
                        onTap: () {
                          stateInstance.selectedUserId = id;
                          Navigator.pushNamed(context, userShow);
                          // Navigator.pushNamed(context, userShow ,arguments: {'id': stateInstance.users[i].id});
                        },
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Edit'),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.delete_forever_sharp),
                        title: Text('Delete'),
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => UserDeleteDialog(
                              id: id,
                              name: name,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
