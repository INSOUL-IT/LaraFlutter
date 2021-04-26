import 'package:ii_call_api/ii_call_api.dart';
import 'package:lara_flutter/config/url/url.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/routes/route_names.dart';

class UserRepository {
  final String baseUrl = apiBaseUrl;

  //**************************************************************//
  //**************************************************************//
  //***************             INDEX                 ************//
  //**************************************************************//
  //**************************************************************//

  Future<List<UserModel>> fetchAllUser() async {
    String path = "/users";
    final response = await CallApi().get(path);
    var extractedResponse = response["data"];

    List<UserModel> users = [];

    for (int i = 0; i < extractedResponse.length; i++) {
      users.add(UserModel.fromJson(extractedResponse[i]));
    }

    return users;
  }

  //**************************************************************//
  //**************************************************************//
  //***************             SHOW                  ************//
  //**************************************************************//
  //**************************************************************//

  Future<UserModel> fetchUser(int id) async {
    String path = userShow + id.toString();
    final response = await CallApi().get(path);
    UserModel user = UserModel.fromJson(response['data']);
    return user;
  }

  //**************************************************************//
  //**************************************************************//
  //***************             CREATE                ************//
  //**************************************************************//
  //**************************************************************//

  Future<dynamic> createUser(Map requestBody) async {
    String path = baseUrl + "/users";
    final response = await CallApi().create(path, requestBody);
    return response;
  }

  //**************************************************************//
  //**************************************************************//
  //***************             UPDATE                ************//
  //**************************************************************//
  //**************************************************************//

  Future<dynamic> updateUser(Map information) async {}

  //**************************************************************//
  //**************************************************************//
  //***************             DELETE                ************//
  //**************************************************************//
  //**************************************************************//

  Future<bool> fetchDeletedUser(int id) async {
    String path = "/users/" + id.toString();
    final response = await CallApi().delete(path);
    return response == 1 ? true : false;
  }
}
