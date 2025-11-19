import 'package:bloc/bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterValue(0)) {

    on<Increment>((event, emit) {
      final currentValue = (state as CounterValue).value;
      emit(CounterValue(currentValue + 1));
    });

    on<Decrement>((event, emit) {
      final currentValue = (state as CounterValue).value;
      emit(CounterValue(currentValue - 1));
    });
  }
}
