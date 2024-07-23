import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? notes;

  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    final noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
  }
}
