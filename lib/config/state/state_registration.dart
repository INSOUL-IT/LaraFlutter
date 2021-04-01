import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:provider/provider.dart';
import 'package:lara_flutter/modules/counter/counter_state.dart';

class StateRegistration {
  stateList() {
    return [
      ChangeNotifierProvider(create: (context) => CounterState()),
      ChangeNotifierProvider(create: (context) => UserState()),
      //Provider(create: (context) => PostState()),
    ];
  }
}
