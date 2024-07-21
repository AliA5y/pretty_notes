import 'package:flutter/material.dart';
import 'package:pretty_notes/views/home.dart';

void main() {
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
