import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';
import 'package:provider/provider.dart';

class UserCard extends StatelessWidget {
  final int id;
  final String name;
  final String email;
  UserCard({this.name, this.email, this.id});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserState>(
      builder: (context, stateInstance, child) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      width: 200,
                      child: Image.network(
                          'https://res.cloudinary.com/dtbudl0yx/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/wp-content/uploads/2019/10/user-1633249_1280-768x749.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    email,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.skip_next_rounded),
                      tooltip: 'Show',
                      onPressed: () {
                        Navigator.pushNamed(context, userShow);
                        stateInstance.selectedUserId = id;
                        // Navigator.pushNamed(context, userShow ,arguments: {'id': stateInstance.users[i].id});
                      },
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      tooltip: 'Edit',
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      tooltip: 'Delete',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
