import 'package:flutter/material.dart';
import 'package:state_management/shoppingcart.dart';

class CartDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Details'),
      ),
      body: Center(
        child: Text(
          '${cart.products.length} Selected',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}
