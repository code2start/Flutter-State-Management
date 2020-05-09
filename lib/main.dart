import 'package:flutter/material.dart';
import 'package:state_management/counter_provider.dart';

import 'home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
