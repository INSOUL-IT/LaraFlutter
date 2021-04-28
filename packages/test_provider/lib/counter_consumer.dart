part of test_provider;

class CounterConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterState>(
      builder: (context, state, child) {
        return Column(
          children: [
            Text("Counter : ${state.count}  "),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("+"),
              onPressed: () {
                state.increment();
                print(state.count);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("-"),
              onPressed: () => state.decrement(),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("set to 8"),
              onPressed: () => state.setCount(8),
            )
          ],
        );
      },
    );
  }
}
