import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/noteItem.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:16),
      child: ListView.builder(
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 8),
            child:  NoteItem(),
          );
        }
        ),
    );
  }
}