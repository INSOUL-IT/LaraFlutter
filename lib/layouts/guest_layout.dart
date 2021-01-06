import 'package:flutter/material.dart';
import 'package:route_generator/route/app_routes.dart';
import 'package:route_generator/route/route_names.dart';
import 'package:route_generator/screens/content_a.dart';
import 'package:route_generator/screens/content_b.dart';
import 'package:route_generator/screens/home_page.dart';

class GuestLayout extends StatefulWidget {
  @override
  _GuestLayoutState createState() => _GuestLayoutState();
}

class _GuestLayoutState extends State<GuestLayout> {
  Widget child;
  @override
  void initState() {
    child = ContentA();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest'),
      ),
      body: Container(
        child: Column(
          children: [
            TestWi(),
            Container(
              child: Row(
                children: [
                  Text('My Navigation bar'),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        // child = ContentA();
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil(routea, (_) => false);
                      });
                    },
                    child: Text('page A'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        child = ContentB();
                      });
                    },
                    child: Text('page B'),
                  )
                ],
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class TestWi extends StatelessWidget {
  const TestWi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('printed');
    return Container(
      child: Text('ok'),
    );
  }
}
