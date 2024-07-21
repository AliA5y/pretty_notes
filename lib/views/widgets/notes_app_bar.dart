import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/action_bottun.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notes',
            style: TextStyle(fontSize: 18),
          ),
          ActionBottun(icon: Icons.search, onPressed: () {})
        ],
      ),
    );
  }
}
