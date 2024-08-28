import '../models/my_model.dart';

class MyController {
  final MyModel model;
  MyController(this.model);

  void updateData(String newData) {
    model.data = newData;
  }
}