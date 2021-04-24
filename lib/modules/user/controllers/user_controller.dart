import 'package:flutter/material.dart';

import '../pages/create/user_create.dart';
import '../pages/delete/user_delete.dart';
import '../pages/index/user_index.dart';
import '../pages/show/user_show.dart';

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
