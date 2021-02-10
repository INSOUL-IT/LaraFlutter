import 'package:flutter/material.dart';
import 'package:lara_flutter/app/providers/movie_screen.dart';
import 'package:lara_flutter/resources/views/home/home_index.dart';


class HomeController {

  Widget index() {
    return HomeIndex();
  }

  Widget movie() {
    return MovieScreen();
  }

}

