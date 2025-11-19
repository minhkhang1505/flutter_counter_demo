import 'package:flutter/material.dart';

/// A reusable icon button with custom color, border, and callback.
class ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color? borderColor;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color),
        side: WidgetStateProperty.all(
          BorderSide(width: 2.0, color: borderColor ?? color),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
      ),
      icon: Icon(icon, color: Colors.white),
      onPressed: onPressed,
    );
  }
}
