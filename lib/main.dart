import 'package:flutter/material.dart';
import 'package:hivetutorial/views/NotesView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const NotesApp(),
    );
  }
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'popins'
      ) ,
      home: const NotesView(),
    );
  }
}
