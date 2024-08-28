import 'package:flutter/material.dart';
import '../controllers/my_controller.dart';

class MyView extends StatefulWidget {
  final MyController controller;

   const MyView(this.controller, {super.key});

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.controller.model.data),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.controller.updateData('New Data');
                });
              },
              child: const Text('Update Data'),
            ),
          ],
        ),
      ),
    );
  }
}

