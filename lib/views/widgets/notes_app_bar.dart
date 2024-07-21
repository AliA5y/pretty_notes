import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/action_bottun.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Row(
            children: [
              ActionBottun(icon: Icons.brightness_4, onTap: () {}),
              SizedBox(
                width: 12,
              ),
              ActionBottun(icon: Icons.search, onTap: () {}),
            ],
          )
        ],
      ),
    );
  }
}
