import 'package:lara_flutter/helpers/api/api_base_helper.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserRepository {
  Future<UserModel> fetchUser(int id) async {
    String path = userShow + id.toString();
    final response = await ApiBaseHelper().get(path);
    UserModel user = UserModel.fromJson(response['data']);
    return user;
  }

  Future<List<UserModel>> fetchAllUser() async {
    String path = "/users";
    final response = await ApiBaseHelper().get(path);
    var extractedResponse = response["data"];

    List<UserModel> users = [];

    for (int i = 0; i < extractedResponse.length; i++) {
      users.add(UserModel.fromJson(extractedResponse[i]));
    }

    return users;
  }

  Future<bool> fetchDeletedUser(int id) async {
    String path = "/users/" + id.toString();
    final response = await ApiBaseHelper().delete(path);
    return response == 1 ? true : false;
  }
}
