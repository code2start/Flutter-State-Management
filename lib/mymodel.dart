import 'package:flutter/cupertino.dart';

class MyModel with ChangeNotifier {
  int number = 0;
  String name = 'Mohamed Fathy';
  inc() {
    number++;
    notifyListeners();
  }

  changeName() {
    name = "Ahmed Mohamed";
    notifyListeners();
  }
}
