import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/edit_note_view.dart';

class NoteItemCard extends StatelessWidget {
  const NoteItemCard({super.key, this.onTap, required this.note});
  final void Function()? onTap;
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
            decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    maxLines: 1,
                    note.title,
                    style: const TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  subtitle: Text(
                    note.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white38),
                  ),
                  trailing: IconButton(
                      padding: const EdgeInsets.all(8),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditNoteView(
                              note: note,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.edit,
                        size: 26,
                        color: Colors.white,
                      )),
                ),
                Row(
                  children: [
                    Text(
                      note.date,
                      style: const TextStyle(color: Colors.white38),
                    ),
                    const Spacer(),
                    IconButton(
                        padding: const EdgeInsets.all(8),
                        onPressed: () {
                          note.delete();
                          BlocProvider.of<NotesCubit>(context).triggerRefresh();
                        },
                        icon: const Icon(
                          Icons.delete,
                          size: 26,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
