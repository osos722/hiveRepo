import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/customApppBar.dart';
import 'package:hivetutorial/widgets/notesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(text: 'Note', icona: Icons.search,),
          Expanded(child: Noteslistview())
        ],
        ),
    );
  }
}