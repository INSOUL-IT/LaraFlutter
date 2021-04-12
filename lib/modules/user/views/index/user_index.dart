import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/views/admin_layout.dart';
import 'package:lara_flutter/modules/user/views/index/user_index_consumer.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      view: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Users",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 200,
            child: Center(
              child: Container(
                height: 50.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, userCreate);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Add User",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          UserIndexConsumer(),
        ],
      ),
    );
  }
}
