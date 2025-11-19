import 'package:bloc/bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterValue(0)) {
    on<Increment>((event, emit) async {
      final currentValue = (state as CounterValue).count;
      // emit(CounterLoading(true));
      // await Future.delayed(const Duration(milliseconds: 3000));
      // emit(CounterLoading(false));
      emit(CounterValue(currentValue + 1));
    });

    on<Decrement>((event, emit) {
      final currentValue = (state as CounterValue).count;
      emit(CounterValue(currentValue - 1));
    });
  }
}
