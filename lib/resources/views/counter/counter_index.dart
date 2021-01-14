import 'package:flutter/material.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';
import 'package:lara_flutter/resources/views/counter/components/counter_consumer.dart';

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
