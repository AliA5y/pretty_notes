import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pretty_notes/constants.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomeView(),
    );
  }
}
