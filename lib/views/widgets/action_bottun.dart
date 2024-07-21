import 'package:flutter/material.dart';

class ActionBottun extends StatelessWidget {
  const ActionBottun({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
