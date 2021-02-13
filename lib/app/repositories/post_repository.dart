import 'dart:convert';

import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/app/providers/api_base_helper.dart';
import 'package:lara_flutter/app/providers/movie_response.dart';
import 'package:http/http.dart' as http;
import 'package:lara_flutter/app/states/post_state.dart';

class PostRepository {
  final String _urlIndex = "/posts";
  final String _urlShow = "/posts/1";


  Future<void> fetchPost() async {
    final response = await ApiBaseHelper().get(_urlShow);
    PostState().setPost(Post.fromJson(response));
  }

   Future<void> fetchAllPost() async {
     List<dynamic> response = await ApiBaseHelper().get(_urlIndex);
     print("----------------------------------------------------");
     //response.forEach( (element) => print(element) );

     for(int i = 0 ; i < response.length ; i++){
       print(Post.fromJson(response[i]));
       PostState().addPost(Post.fromJson(response[i]));
       print("----------------------------------------------------");
     }
     print(response.length);
     //print(response[0]);
     //var a = Post.fromJson(response);
     //print(response);
     print("----------------------------------------------------");
     //return response;
   }

}