import 'package:flutter/material.dart';
import 'package:state_management/counter_provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter using Inherited Widget'),
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
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      provider.counter--;
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
