import 'package:flutter/material.dart';

class CartDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Details'),
      ),
      body: Center(
        child: Text(
          ' 5 Selected',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}
