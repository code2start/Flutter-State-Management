import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/counter_bloc.dart';
import 'package:state_management/simple_bloc_delegate.dart';

import 'home.dart';

main() {
  //we juist need to tweak our main funcition
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MaterialApp(
          home: Home(),
        ));
  }
}
