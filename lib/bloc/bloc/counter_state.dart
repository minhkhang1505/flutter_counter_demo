abstract class CounterState {}

class CounterValue extends CounterState {
  final int count;

  CounterValue(this.count);
}

// class CounterLoading extends CounterState {
//   final bool isLoading;

//   CounterLoading(this.isLoading);
// }
