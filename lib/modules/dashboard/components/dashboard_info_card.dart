import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:lara_flutter/routes/route_names.dart';
import 'package:provider/provider.dart';

class DashboardInfoCard extends StatelessWidget {
  final String title;
  final double value;
  final IconData iconData;
  DashboardInfoCard({this.title = "", this.value = 0, this.iconData});

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
              borderRadius: BorderRadius.circular(20), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 200,
                      child: Icon(
                        iconData,
                        color: Colors.deepPurple,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
