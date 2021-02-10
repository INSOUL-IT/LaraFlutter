
import 'package:flutter/material.dart';
import 'package:lara_flutter/app/models/post.dart';

class PostState extends ChangeNotifier{

  List<Post> posts = [];

  void postStateCalll() {
    print('state');
  }

}