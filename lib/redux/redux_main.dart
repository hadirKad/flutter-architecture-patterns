// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'models/my_model.dart';
import 'reducers/my_reducer.dart';
import 'views/my_view.dart';

void main() {
  final store = Store<MyState>(reducer, initialState: MyState('Initial Data'));

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<MyState> store;
  const MyApp(this.store, {super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const  MaterialApp(
        home: MyView(),
      ),
    );
  }
}