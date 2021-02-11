import 'dart:convert';

import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/app/providers/api_base_helper.dart';
import 'package:lara_flutter/app/providers/movie_response.dart';
import 'package:http/http.dart' as http;

class PostRepository {
   final String _url = "/posts/1";
   ApiBaseHelper _helper = ApiBaseHelper();


  Future<void> fetchPost() async {
    final response = await _helper.get(_url);
    print("----------------------------------------------------");
    var a = Post.fromJson(response);
    print(a.id);
    print("----------------------------------------------------");
    //return response;
  }

   Future<Post> fetchAlbum() async {
     final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');
     print(Post.fromJson(jsonDecode(response.body)).title);
     if (response.statusCode == 200) {
       return Post.fromJson(jsonDecode(response.body));
     } else {
       throw Exception('Failed to load album');
     }
   }

}