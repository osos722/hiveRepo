import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivetutorial/cubits/addnoteCubit/addNoteCubit.dart';
import 'package:hivetutorial/models/noteModel.dart';
import 'package:hivetutorial/views/NotesView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async{
  await Hive.initFlutter();
 await  Hive.openBox('notes_box');
 Hive.registerAdapter(NoteModelAdapter());
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
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>Addnotecubit()),
      ],
      child: MaterialApp(
        theme:ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'popins'
        ) ,
        home: const NotesView(),
      ),
    );
  }
}
