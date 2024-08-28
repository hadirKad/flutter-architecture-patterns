//We have a CounterEvent with a specific event IncrementEvent.

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {
  final int amount;
  IncrementEvent(this.amount);
}
