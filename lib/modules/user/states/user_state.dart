import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/repositories/UserRepository.dart';

class UserState extends ChangeNotifier {
  // Index
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//

  List<UserModel> _users = [];
  List<UserModel> get users => _users;

  void addUser(UserModel user) {
    _users.add(user);
  }

  UserModel _user;
  UserModel get user => _user;

  int selectedUserId;

  void getUser() async {
    _user = await UserRepository().fetchUser(selectedUserId);
    notifyListeners();
  }

  void getAllUser() async {
    _users = await UserRepository().fetchAllUser();
    notifyListeners();
  }

  // Create
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//

  Map<dynamic, dynamic> userInformation = {
    "name": "",
    "email": "",
    "password": "",
    "password_confirmation": "",
  };

  void createUser() async {
    print(userInformation);
    var response = await UserRepository().createUser(userInformation);
    // print(response);
  }

  // delete
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//
  //**************************************************************//

  bool deleteStatus = false;

  void deleteUser() async {
    deleteStatus = await UserRepository().fetchDeletedUser(selectedUserId);
    notifyListeners();
  }
}
