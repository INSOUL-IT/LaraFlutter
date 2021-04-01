import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/counter/views/components/counter_consumer.dart';
import 'package:lara_flutter/modules/layout/app_layout.dart';

class CounterIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterConsumer(),
        ],
      ),
    );
  }
}
