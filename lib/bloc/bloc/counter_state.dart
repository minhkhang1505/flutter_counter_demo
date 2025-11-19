abstract class CounterState {}

class CounterValue extends CounterState {
  final int value;
  
  CounterValue(this.value);
}
