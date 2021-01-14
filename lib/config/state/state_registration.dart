import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lara_flutter/app/states/counter_state.dart';

class StateRegistration {

  stateList(){
    return [

      ChangeNotifierProvider(create: (context) => CounterState()),
      //Provider(create: (context) => CounterState()),





    ];
  }

}