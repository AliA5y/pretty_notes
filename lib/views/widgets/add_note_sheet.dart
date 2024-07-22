import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/submit_button.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hint: 'Note title',
        ),
        CustomTextFormField(
          hint: 'Note content',
          maxLength: 12,
        ),
        SubmitButton(
          label: 'Save Note',
        )
      ],
    );
  }
}
