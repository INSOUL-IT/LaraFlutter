import 'package:flutter/material.dart';
import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/app/repositories/post_repository.dart';

class PostState extends ChangeNotifier{

  List<Post> posts = [];

  //Post _post  = Post(userId: 5, id: 2, title : "this is title" , body: "hola hola" );
  Post _post;
  Post get post =>  _post;

  void addPost(Post post) {
    posts.add(post);
  }

  void getPost() async{
    _post = await PostRepository().fetchPost();
    notifyListeners();
  }

}