import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:pretty_notes/views/home_view_body.dart';
import 'package:pretty_notes/views/widgets/add_note_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: HomeViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPremaryColor,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              context: context,
              builder: (context) {
                return const AddNoteSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
