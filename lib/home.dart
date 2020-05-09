import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:state_management/product.dart';
import 'package:state_management/shopping_cart.dart';

class Home extends StatelessWidget {
  List<Product> items = List.generate(100, (i) {
    return Product(
        name: 'Product $i', price: Random().nextInt(5000), isChecked: false);
  });
  @override
  Widget build(BuildContext context) {
    final info = ShoppingCart.of(context);
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Product Feed'),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15, right: 25),
                child: Badge(
                  badgeContent: Text(
                    '${info.products.length}',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Cart(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          body: Center(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(items[i].name),
                        ),
                        Checkbox(
                          value: items[i].isChecked,
                          onChanged: (value) {
                            setState(() {
                              items[i].isChecked = !items[i].isChecked;
                              if (items[i].isChecked) {
                                info.products.add(items[i]);
                              } else {
                                info.products.remove(items[i]);
                              }
                            });
                          },
                        )
                      ],
                    ),
                    subtitle: Text('${items[i].price}'),
                    onTap: () {
                      setState(() {
                        info.products.add(items[i]);
                      });
                    },
                  );
                }),
          ),
        );
      },
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Retail Store')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Product A'),
              Text('${info.products.length} selected'),
            ]),
      ),
    );
  }
}
