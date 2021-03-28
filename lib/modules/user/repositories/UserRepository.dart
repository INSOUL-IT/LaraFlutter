import 'package:flutter/cupertino.dart';
import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/app/providers/api_base_helper.dart';
import 'package:lara_flutter/app/states/post_state.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserRepository {

  Future<UserModel> fetchUser() async {
    final response = await ApiBaseHelper().get(userShow);
    UserModel user = UserModel.fromJson(response['data']);
    return user;
  }

  // Future<void> fetchAllUser() async {
  //   List<dynamic> response = await ApiBaseHelper().get(_urlIndex);
  //   print("----------------------------------------------------");
  //   //response.forEach( (element) => print(element) );
  //
  //   for(int i = 0 ; i < response.length ; i++){
  //     print(Post.fromJson(response[i]));
  //     PostState().addPost(Post.fromJson(response[i]));
  //     print("----------------------------------------------------");
  //   }
  //   print(response.length);
  //   //print(response[0]);
  //   //var a = Post.fromJson(response);
  //   //print(response);
  //   print("----------------------------------------------------");
  //   //return response;
  // }

}