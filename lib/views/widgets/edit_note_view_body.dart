import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/edit_note_color_list.dart';
import 'package:pretty_notes/views/widgets/notes_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  int? newColorIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotesAppBar(
          mainActionTap: () {
            if (title != null) {
              widget.note.title = title!;
            }
            if (content != null) {
              widget.note.subtitle = content!;
            }
            if (newColorIndex != null) {
              widget.note.color = colors[newColorIndex!].value;
            }
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).triggerRefresh();
            Navigator.pop(context);
          },
          mainActionIcon: Icons.check,
          isHome: false,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(
                    onChanged: (value) {
                      title = value;
                    },
                    initialText: widget.note.title,
                    hint: 'Note title',
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    onChanged: (value) {
                      content = value;
                    },
                    initialText: widget.note.subtitle,
                    hint: 'Note content',
                    maxLength: 12,
                  ),
                  const SizedBox(height: 16),
                  EditNoteColorsList(
                      note: widget.note,
                      onSelect: (index) {
                        newColorIndex = index;
                      })
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
