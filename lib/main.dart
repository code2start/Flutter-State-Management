import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: myWidget(context),
      ),
    );
  }

  Widget myWidget(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.remove,
                size: 50,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 50,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ],
        );
      },
    );
  }
}
