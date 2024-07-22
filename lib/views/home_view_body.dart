import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/cubits/cubit/theme_cubit.dart';
import 'package:pretty_notes/views/widgets/notes_app_bar.dart';
import 'package:pretty_notes/views/widgets/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotesAppBar(
          mainActionIcon: Icons.search,
          isHome: true,
          themeTap: () {
            context.read<ThemeCubit>().toggleTheme();
          },
        ),
        const SizedBox(height: 16),
        const Expanded(child: NotesListView()),
      ],
    );
  }
}
