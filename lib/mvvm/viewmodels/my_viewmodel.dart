import 'package:flutter/foundation.dart';
import '../models/my_model.dart';

class MyViewModel with ChangeNotifier {
  MyModel _model;
  MyViewModel(this._model);

  String get data => _model.data;

  void updateData(String newData) {
    _model.data = newData;
    notifyListeners();
  }
}