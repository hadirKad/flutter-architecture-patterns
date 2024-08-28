import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../models/my_model.dart';
import '../actions/my_action.dart';

class MyView extends StatelessWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Redux Example')),
      body: Center(
        child: StoreConnector<MyState, String>(
          converter: (store) => store.state.data,
          builder: (context, data) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(data),
                ElevatedButton(
                  onPressed: () => StoreProvider.of<MyState>(context).dispatch(UpdateDataAction('New Data')),
                  child: const Text('Update Data'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}