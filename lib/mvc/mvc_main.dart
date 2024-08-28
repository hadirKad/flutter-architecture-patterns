import 'package:flutter/material.dart';
import 'models/my_model.dart';
import 'controllers/my_controller.dart';
import 'views/my_view.dart';

void main() {
  MyModel model = MyModel('Initial Data');
  MyController controller = MyController(model);
  runApp(MaterialApp(
    home: MyView(controller)));
}
