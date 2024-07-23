import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/widgets/custom_text_form_field.dart';
import 'package:pretty_notes/views/widgets/submit_button.dart';

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
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailur) {
          print('Operation failed: ${state.errMessage}');
        }
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Form(
            autovalidateMode: autovalidateMode,
            key: formKey,
            child: SingleChildScrollView(
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
                    isLoading: state is AddNoteLoading,
                    label: 'Add Note',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        final note = NoteModel(
                            title: title!,
                            subtitle: content!,
                            date: DateFormat().format(DateTime.now()),
                            color: colors[Random().nextInt(4)].value);
                        BlocProvider.of<AddNoteCubit>(context).addNote(note);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
