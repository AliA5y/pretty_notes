import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:pretty_notes/views/widgets/add_note_form.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: 32,
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const AddNoteForm(),
        ),
      ),
    );
  }
}
