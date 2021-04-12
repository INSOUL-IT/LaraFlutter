import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/user/views/create/user_create.dart';
import 'package:lara_flutter/modules/user/views/delete/user_delete.dart';
import 'package:lara_flutter/modules/user/views/index/user_index.dart';
import 'package:lara_flutter/modules/user/views/show/user_show.dart';

class UserController {
  Widget index() {
    return UserIndex();
  }

  Widget show() {
    return UserShow();
  }

  Widget create() {
    return UserCreate();
  }

  Widget delete() {
    // return UserDeleteConsumer();
    return UserDelete();
  }
}
