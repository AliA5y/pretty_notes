import 'package:flutter/material.dart';

class ActionBottun extends StatelessWidget {
  const ActionBottun({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            size: 30,
          )),
    );
  }
}
