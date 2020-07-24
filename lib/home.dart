import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/mymodel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => MyModel(),
        child: Center(
          child: Column(
            children: <Widget>[
              Widget1(),
              Widget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var number = context.select((MyModel myModel) => myModel.number);
    print('widget 1 called');
    return Column(
      children: <Widget>[
        Text(number.toString()),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Provider.of<MyModel>(context, listen: false).inc();
          },
        )
      ],
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Widget2 called');
    var name = context.select((MyModel myModel) => myModel.name);
    return Column(
      children: <Widget>[
        Text(name),
        RaisedButton(
          child: Text('Change name'),
          onPressed: () {
            Provider.of<MyModel>(context, listen: false).changeName();
          },
        )
      ],
    );
  }
}
