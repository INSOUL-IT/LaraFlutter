import 'package:flutter/material.dart';
import 'package:lara_flutter/app/models/post.dart';

class PostState extends ChangeNotifier{

  List<Post> posts = [];

  //Post _post  = Post(userId: 5, id: 2, title : "this is title" , body: "hola hola" );
  Post _post;
  Post get post =>  _post;

  void addPost(Post post) {
    posts.add(post);
  }

  void setPost(Post post){
    print(post.title);
    _post = post;
    print(_post.title);
    notifyListeners();
  }

}