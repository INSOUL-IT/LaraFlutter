import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/repositories/UserRepository.dart';

class UserState extends ChangeNotifier {
  //**************************************************************//
  //**************************************************************//
  //***************             SHOW                  ************//
  //**************************************************************//
  //**************************************************************//

  List<UserModel> users = [];

  void getAllUser() async {
    users = await UserRepository().fetchAllUser();
    notifyListeners();
  }

  void addUser(UserModel user) {
    users.add(user);
  }

  //**************************************************************//
  //**************************************************************//
  //***************             SHOW                  ************//
  //**************************************************************//
  //**************************************************************//

  UserModel user;
  int selectedUserId;

  void getUser() async {
    user = await UserRepository().fetchUser(selectedUserId);
    notifyListeners();
  }

  //**************************************************************//
  //**************************************************************//
  //***************             CREATE                ************//
  //**************************************************************//
  //**************************************************************//

  Map<dynamic, dynamic> userInformation = {
    "name": "",
    "email": "",
    "password": "",
    "password_confirmation": "",
  };

  void createUser() async {
    var response = await UserRepository().createUser(userInformation);
    print(response);
  }

  //**************************************************************//
  //**************************************************************//
  //***************             DELETE                ************//
  //**************************************************************//
  //**************************************************************//

  bool deleteStatus = false;

  void deleteUser() async {
    deleteStatus = await UserRepository().fetchDeletedUser(selectedUserId);
    notifyListeners();
  }
}
