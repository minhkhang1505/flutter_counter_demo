import 'package:counter_demo/bloc/bloc/counter_bloc.dart';
import 'package:counter_demo/bloc/bloc/counter_state.dart';
import 'package:counter_demo/bloc/bloc/counter_event.dart';
import 'package:counter_demo/bloc/widgets/action_button.dart';
import 'package:counter_demo/bloc/widgets/counter_app_bar.dart';
import 'package:counter_demo/bloc/widgets/counter_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CounterAppBar(),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CounterDisplay(state: state),
                  const SizedBox(height: 160.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ActionButton(
                          icon: Icons.remove,
                          color: Colors.red,
                          borderColor: Colors.red.shade700,
                          onPressed: () =>
                              context.read<CounterBloc>().add(Decrement()),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: ActionButton(
                          icon: Icons.add,
                          color: Colors.blue,
                          borderColor: Colors.blue.shade700,
                          onPressed: () =>
                              context.read<CounterBloc>().add(Increment()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
