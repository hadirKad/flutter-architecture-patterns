import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/my_viewmodel.dart';

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MyViewModel>(
              builder: (context, viewModel, child) {
                return Text(viewModel.data);
              },
            ),
            ElevatedButton(
              onPressed: () => Provider.of<MyViewModel>(context, listen: false).updateData('New Data'),
              child: const Text('Update Data'),
            ),
          ],
        ),
      ),
    );
  }
}