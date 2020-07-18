import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/mycounter.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prvider lesson 1'),
      ),
      body: ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<MyCounter>(
                builder: (context, mycounter, child) {
                  return Text('${mycounter.counter}');
                },
              ),
              Consumer<MyCounter>(
                builder: (context, mycounter, child) {
                  return IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      mycounter.inc();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
