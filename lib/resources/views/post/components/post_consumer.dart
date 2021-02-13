import 'package:flutter/material.dart';
import 'package:lara_flutter/app/states/post_state.dart';

import 'package:provider/provider.dart';

class PostConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PostState>(
      builder: (context, postInstance , child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            postInstance.post == null ? Text("Loading...") : Text("${postInstance.post.title}"),
            SizedBox(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}