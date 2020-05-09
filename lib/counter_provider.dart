import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  int counter = 0;
  final Widget child;
  CounterProvider({this.child});

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
