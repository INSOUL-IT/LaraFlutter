import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/repositories/UserRepository.dart';


class UserState extends ChangeNotifier{

  List<UserModel> users = [];

  UserModel _user;
  UserModel get user =>  _user;


  void getUser() async{
    _user = await UserRepository().fetchUser();
    notifyListeners();
  }


}