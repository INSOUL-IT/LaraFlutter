import 'package:flutter/material.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Index Page"),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, userShow);
              },
              child: Text("User Show"),
            )
          ],
        ),
      ),
    );
  }
}
