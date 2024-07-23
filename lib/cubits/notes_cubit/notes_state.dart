part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccuss extends NotesState {
  final List<NoteModel> notes;

  NotesSuccuss({required this.notes});
}
