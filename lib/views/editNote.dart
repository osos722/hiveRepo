import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/editNoteBody.dart';

class Editnote extends StatelessWidget {
  const Editnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditnoteBody(),
    );
  }
}