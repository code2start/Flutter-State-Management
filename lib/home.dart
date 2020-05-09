import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:state_management/cartdetails.dart';
import 'package:state_management/product.dart';
import 'package:state_management/shoppingcart.dart';

class Home extends StatelessWidget {
  List<Product> items = List.generate(100, (i) {
    return Product(
        name: 'Product $i', price: Random().nextInt(5000), isCheck: false);
  });
  @override
  Widget build(BuildContext context) {
    ShoppingCart cart = ShoppingCart.of(context);
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Shopping Cart'),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15, right: 25),
                child: Badge(
                  badgeContent: Text(
                    '${cart.products.length}',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CartDetails()));
                    },
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(child: Text(items[i].name)),
                        Checkbox(
                          value: items[i].isCheck,
                          onChanged: (value) {
                            setState(() {
                              items[i].isCheck = !items[i].isCheck;
                              if (items[i].isCheck) {
                                cart.products.add(items[i]);
                              } else {
                                cart.products.remove(items[i]);
                              }
                            });
                          },
                        )
                      ],
                    ),
                    subtitle: Text('${items[i].price} EGP'),
                  ),
                );
              }),
        );
      },
    );
  }
}
