import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/cubit/theme_cubit.dart';
import 'package:pretty_notes/views/home.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const PrettyNotesApp());
}

class PrettyNotesApp extends StatelessWidget {
  const PrettyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
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
