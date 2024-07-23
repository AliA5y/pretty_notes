import 'package:flutter/material.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/widgets/action_bottun.dart';

class ViewNoteView extends StatelessWidget {
  final NoteModel note;

  const ViewNoteView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4),
          child: ActionBottun(
            icon: Icons.arrow_back_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          note.title,
          overflow: TextOverflow.visible,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Text(
            note.subtitle,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
