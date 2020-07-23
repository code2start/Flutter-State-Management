import 'package:flutter/foundation.dart';

class MyModel with ChangeNotifier {
  String name;
  int number;
  MyModel(this.name, this.number);

  inc() {
    number++;
    notifyListeners();
  }
}
