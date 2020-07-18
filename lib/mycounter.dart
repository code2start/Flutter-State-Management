import 'package:flutter/foundation.dart';

class MyCounter extends ChangeNotifier {
  int counter = 0;

  inc() {
    counter++;
    notifyListeners();
  }
}
