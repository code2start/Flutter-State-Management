import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/mycounter.dart';
import 'package:state_management/next.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounter>(
      create: (BuildContext context) {
        return MyCounter();
      },
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Consumer<MyCounter>(builder: (context, mycounter, child) {
            return Text('${mycounter.counter}');
          }),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Second(),
                  ),
                );
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<MyCounter>(builder: (context, mycounter, child) {
                return Text('${mycounter.counter}');
              }),
              Consumer<MyCounter>(builder: (context, mycounter, child) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    mycounter.inc();
                  },
                );
              }),
              Consumer<MyCounter>(builder: (context, mycounter, child) {
                return Text('${mycounter.counter}');
              }),
            ],
          ),
        ));
  }
}
