import 'package:counter_demo/cubit/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App Demo')),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$state', style: const TextStyle(fontSize: 98.0)),
                  SizedBox(height: 160.0),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Colors.red,
                            ),
                            side: WidgetStateProperty.all(
                              BorderSide(
                                width: 2.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          icon: const Icon(Icons.remove, color: Colors.white),
                          onPressed: () =>
                              context.read<CounterCubit>().decrement(),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Colors.blue,
                            ),
                            side: WidgetStateProperty.all(
                              BorderSide(
                                width: 2.0,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),

                          icon: const Icon(Icons.add, color: Colors.white),
                          onPressed: () => BlocProvider.of<CounterCubit>(
                            context,
                          ).increment(),
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
