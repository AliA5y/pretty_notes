import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color noteColor = colors.first;
  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      final noteBox = Hive.box<NoteModel>(kNotesBox);
      noteBox.add(note);
      log('success');
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailur(errMessage: e.toString()));
    }
  }
}
