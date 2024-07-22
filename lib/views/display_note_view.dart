import 'package:flutter/material.dart';

class DisplayNoteView extends StatelessWidget {
  // final NoteModel note;

  const DisplayNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // note.title,
          'Title',
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
            // note.content,
            'Content',
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
