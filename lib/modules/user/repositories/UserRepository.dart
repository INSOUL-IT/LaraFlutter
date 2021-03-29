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



  Future<List<UserModel>> fetchAllUser() async {

    final response = await ApiBaseHelper().get(userIndex);
    var extractedResponse = response["data"];

    List<UserModel> users = [];

    for(int i = 0 ; i < extractedResponse.length ; i++){
      users.add(UserModel.fromJson(extractedResponse[i]));
    }

    return users;
  }

}