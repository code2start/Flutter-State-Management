import 'package:flutter/material.dart';
import 'package:state_management/mymodel.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider read extension'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => MyModel('Mohamed Fathy', 22),
        child: Center(
          child: Column(
            children: <Widget>[MyNameWidget(), MyNumber()],
          ),
        ),
      ),
    );
  }
}

class MyNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myModel = Provider.of<MyModel>(context, listen: false);
    return Text(myModel.name);
  }
}

class MyNumber extends StatelessWidget {
  MyNumber({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var m = context.watch<MyModel>();
    return Column(
      children: <Widget>[
        Text('${m.number}'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            m.inc();
          },
        )
      ],
    );
  }
}
