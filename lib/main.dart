import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:pretty_notes/cubits/theme_cubit/theme_cubit.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/simple_bloc_observer.dart';
import 'package:pretty_notes/views/home.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const PrettyNotesApp());
}

class PrettyNotesApp extends StatelessWidget {
  const PrettyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => NotesCubit()),
      ],
      child: BlocBuilder<ThemeCubit, Brightness>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: state),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
