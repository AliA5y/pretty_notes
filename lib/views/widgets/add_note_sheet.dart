import 'package:flutter/material.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(),
      ],
    );
  }
}
