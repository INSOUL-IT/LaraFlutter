import 'package:flutter/material.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';

import 'components/post_consumer.dart';

class PostShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Center(
        child: PostConsumer(),
      ),
    );
  }
}
