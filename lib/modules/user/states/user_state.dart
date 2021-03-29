import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/repositories/UserRepository.dart';


class UserState extends ChangeNotifier{

  List<UserModel> _users = [];
  List<UserModel> get users =>  _users;

  void addUser (UserModel user){
    _users.add(user);
  }

  UserModel _user;
  UserModel get user =>  _user;


  void getUser() async{
    _user = await UserRepository().fetchUser();
    notifyListeners();
  }

  void getAllUser() async {
    _users = await UserRepository().fetchAllUser();
    notifyListeners();
  }



}