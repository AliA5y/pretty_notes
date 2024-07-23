import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/views/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return NoteCard(
          color: colors[index % colors.length],
        );
      },
    );
  }
}
