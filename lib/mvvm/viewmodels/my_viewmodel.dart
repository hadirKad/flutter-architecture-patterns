import 'package:flutter/foundation.dart';
import '../models/my_model.dart';

class MyViewModel with ChangeNotifier {
  MyModel model;
  MyViewModel(this.model);

  String get data => model.data;

  void updateData(String newData) {
    model.data = newData;
    notifyListeners();
  }
}