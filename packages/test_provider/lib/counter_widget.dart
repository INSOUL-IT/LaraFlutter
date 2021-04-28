part of test_provider;

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterState(),
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterConsumer(),
                CounterConsumer2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
