import 'package:flutter/material.dart';
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
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
