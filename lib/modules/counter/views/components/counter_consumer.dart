import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/counter/counter_state.dart';
import 'package:provider/provider.dart';

class CounterConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterState>(
      builder: (context, counterInstance, child) {
        return Column(
          children: [
            Text("Counter : ${counterInstance.counter} "),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("+"),
              onPressed: () => counterInstance.addOne(),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("-"),
              onPressed: () => counterInstance.subtractOne(),
            )
          ],
        );
      },
    );
  }
}
