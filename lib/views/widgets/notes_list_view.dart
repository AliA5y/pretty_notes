import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/display_note_view.dart';
import 'package:pretty_notes/views/widgets/note_item_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          itemCount: notes.length + 1,
          itemBuilder: (context, index) {
            return index == notes.length
                ? const SizedBox(height: 64)
                : NoteItemCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ViewNoteView(note: notes[index])));
                    },
                    note: notes[index],
                  );
          },
        );
      },
    );
  }
}
