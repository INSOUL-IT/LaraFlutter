import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/resources/user_index.dart';
import 'package:lara_flutter/modules/user/resources/user_show.dart';

class UserController  {

  Widget index() {
    return UserIndex();
  }


  Widget show() {
    return UserShow();
  }
}
