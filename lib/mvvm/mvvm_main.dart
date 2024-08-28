import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/my_model.dart';
import 'viewmodels/my_viewmodel.dart';
import 'views/my_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyViewModel(MyModel('Initial Data')),
      child: const MaterialApp(
        home: MyView(),
      ),
    );
  }
}
