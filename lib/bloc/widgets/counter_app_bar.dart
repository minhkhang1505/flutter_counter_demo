import 'package:flutter/material.dart';

class CounterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CounterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('Counter App Demo'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
