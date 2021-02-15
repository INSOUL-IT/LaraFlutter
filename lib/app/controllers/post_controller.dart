import 'package:flutter/material.dart';
import 'package:lara_flutter/app/repositories/post_repository.dart';
import 'package:lara_flutter/app/states/counter_state.dart';

import 'package:lara_flutter/resources/views/post/Post_show.dart';
import 'package:lara_flutter/resources/views/post/post_index.dart';

class PostController  {
  Widget index() {
    PostRepository().fetchAllPost();
    return PostIndex();
  }

  Widget show () {
    return PostShow();
  }
}
