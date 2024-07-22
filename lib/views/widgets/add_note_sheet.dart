import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/submit_button.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
              label: 'Add Note',
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
