import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/note_card.dart';
import 'package:pretty_notes/views/widgets/notes_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NotesAppBar(),
        SizedBox(height: 50),
        NoteCard(),
      ],
    );
  }
}
