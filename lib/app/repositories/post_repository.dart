import 'dart:convert';

import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/app/providers/api_base_helper.dart';
import 'package:lara_flutter/app/providers/movie_response.dart';
import 'package:http/http.dart' as http;

class PostRepository {
   final String _url = "/posts";
   ApiBaseHelper _helper = ApiBaseHelper();


  Future<void> fetchPost() async {
    final response = await _helper.get(_url);
    print("----------------------------------------------------");
    var a = Post.fromJson(response);
    print(a.id);
    print("----------------------------------------------------");
    //return response;
  }

   Future<void> fetchAllPost() async {
     final response = await _helper.get(_url);
     print("----------------------------------------------------");
     var noteJson = json.decode(response);
     print(noteJson);
     //var a = Post.fromJson(response);
     //print(response);
     print("----------------------------------------------------");
     //return response;
   }

}