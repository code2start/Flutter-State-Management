import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:state_management/product.dart';

class ShoppingCart extends InheritedWidget {
  ShoppingCart({Key key, this.child});

  List<Product> products = [];
  final Widget child;

  @override
  bool updateShouldNotify(ShoppingCart old) =>
      !IterableEquality().equals(products, old.products);

  static ShoppingCart of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}
