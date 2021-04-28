part of test_provider;

class CounterConsumer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterState>(
      builder: (context, state, child) {
        return Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text("set to 200"),
                onPressed: () => state.setCount(200),
              )
            ],
          ),
        );
      },
    );
  }
}
