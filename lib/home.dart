import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/mymodel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('read extension method'),
      ),
      body: Provider(
        create: (context) => MyModel('Mohamed Fathy', 22),
        child: Center(
          child: Column(
            children: <Widget>[MyNameWidget()],
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
