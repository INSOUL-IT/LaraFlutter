import 'package:flutter/material.dart';
import 'package:lara_flutter/app/repositories/post_repository.dart';
import 'package:lara_flutter/resources/views/post/post_index.dart';

class PostController  {
  Widget index() {
    //PostRepository postRepo = PostRepository();
    //postRepo.fetchPost();
    PostRepository().fetchPost();
    return PostIndex();
  }
}
