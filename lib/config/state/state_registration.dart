import 'package:flutter/material.dart';
import 'package:lara_flutter/app/states/post_state.dart';
import 'package:provider/provider.dart';
import 'package:lara_flutter/app/states/counter_state.dart';

class StateRegistration {

  stateList(){
    return [

      ChangeNotifierProvider(create: (context) => CounterState()),
      ChangeNotifierProvider(create: (context) => PostState()),
      //Provider(create: (context) => PostState()),
    ];
  }

}