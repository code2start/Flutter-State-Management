import 'package:flutter/material.dart';
import 'package:state_management/counter_provider.dart';
import 'package:state_management/second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter using Inherited Widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Second()));
            },
          ),
        ],
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${provider.counter}',
                  style: Theme.of(context).textTheme.display1,
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      provider.counter++;
                    });
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
