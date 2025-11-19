import 'package:counter_demo/bloc/app/my_app.dart';
import 'package:counter_demo/bloc/bloc/counter_bloc.dart';
import 'package:counter_demo/cubit/app/counter_app.dart';
import 'package:counter_demo/cubit/couter_observer.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // Bloc.observer = const CounterObserver();
  runApp(const MyApp());
}
