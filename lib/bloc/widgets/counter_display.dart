import 'package:counter_demo/bloc/bloc/counter_state.dart';
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final CounterState state;
  const CounterDisplay({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${state is CounterValue ? (state as CounterValue).count : "Not a counter value"}',
      style: const TextStyle(fontSize: 40.0),
    );
  }
}
