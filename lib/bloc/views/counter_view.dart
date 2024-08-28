import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/counter_bloc.dart';
import '../events/counter_event.dart';
import '../states/counter_state.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter Example')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Counter: ${state.counter}', style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                ElevatedButton(
                      onPressed: () => BlocProvider.of<CounterBloc>(context).add(IncrementEvent(2)),
                      child: const Text('+', style: TextStyle(fontSize: 24)),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
