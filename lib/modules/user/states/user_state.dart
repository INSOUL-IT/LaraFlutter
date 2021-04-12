import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/repositories/UserRepository.dart';

class UserState extends ChangeNotifier {
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

  // delete user operation
  bool deleteStatus = false;

  void deleteUser() async {
    deleteStatus = await UserRepository().fetchDeletedUser(selectedUserId);
    notifyListeners();
  }

  // create user operation
  Map<dynamic, dynamic> _userInformation = {
    "name": "fdgdfg",
    "email": "",
    "password": "",
    "password_confirmation": "",
  };

  void setUserName(String name) {
    _userInformation["name"] = name;
    notifyListeners();
  }

  Map<dynamic, dynamic> get userInformation => _userInformation;

  void createUser() async {
    print(_userInformation);
    var response = await UserRepository().createUser(_userInformation);
    // print(response);
  }
}
