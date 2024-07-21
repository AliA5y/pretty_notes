import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/notes_app_bar.dart';
import 'package:pretty_notes/views/widgets/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NotesAppBar(),
        SizedBox(height: 16),
        Expanded(child: NotesListView()),
      ],
    );
  }
}
