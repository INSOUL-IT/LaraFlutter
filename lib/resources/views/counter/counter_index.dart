import 'package:flutter/material.dart';
import 'package:lara_flutter/app/states/counter_state.dart';
import 'package:provider/provider.dart';

class CounterIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterState>(
      builder: (context, counterInstance , child) {
        return Column(
          children: [
            Text("Counter : ${counterInstance.getCounter()} "),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text("+"),
              onPressed: () => counterInstance.addOne(),
            ) ,
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text("-"),
              onPressed: () => counterInstance.subtractOne(),
            )
          ],
        );
      },
    );
  }
}
