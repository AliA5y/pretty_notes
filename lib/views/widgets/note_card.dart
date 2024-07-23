import 'package:flutter/material.dart';
import 'package:pretty_notes/models/note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, this.onTap, required this.note});
  final void Function()? onTap;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: GestureDetector(
        onTap: () {},
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
                    note.title,
                    style: const TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  subtitle: Text(
                    note.subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white38),
                  ),
                  trailing: IconButton(
                      padding: const EdgeInsets.all(8),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        size: 26,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      note.date,
                      style: const TextStyle(color: Colors.white38),
                    ),
                    const Spacer(),
                    IconButton(
                        padding: const EdgeInsets.all(8),
                        onPressed: () {},
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
