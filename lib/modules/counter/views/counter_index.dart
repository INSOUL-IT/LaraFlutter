import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/counter/views/components/counter_consumer.dart';
import 'package:lara_flutter/modules/layout/views/app_layout.dart';
import 'package:lara_flutter/routes/route_names.dart';

class CounterIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, homeRoute),
              child: Text("Back to Home"),
            ),
            SizedBox(
              height: 30,
            ),
            CounterConsumer(),
          ],
        ),
      ),
    );
  }
}
