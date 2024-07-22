import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/notes_app_bar.dart';
import 'package:pretty_notes/views/widgets/submit_button.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NotesAppBar(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormField(
                  hint: 'Note title',
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  hint: 'Note content',
                  maxLength: 12,
                ),
                SizedBox(height: 16),
                SubmitButton(
                  label: 'Save',
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
