import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/counter_bloc.dart';
import 'package:state_management/counter_event.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Counter App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                counterBloc.add(CounterEvent.remove);
              },
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text('$state');
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                counterBloc.add(CounterEvent.add);
              },
            ),
          ],
        ),
      ),
    );
  }
}
