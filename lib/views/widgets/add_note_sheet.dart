import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/submit_button.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Note title',
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            hint: 'Note content',
            maxLength: 12,
          ),
          const SizedBox(height: 16),
          SubmitButton(
            label: 'Add Note',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
