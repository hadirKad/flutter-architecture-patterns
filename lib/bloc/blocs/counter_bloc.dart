import 'package:flutter_bloc/flutter_bloc.dart';
import '../events/counter_event.dart';
import '../states/counter_state.dart';

//The CounterBloc listens for CounterEvent, specifically the IncrementEvent.
//When it receives this event, it increases the counter and emits a new CounterState.
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.counter + event.amount));
    });
  }
}
