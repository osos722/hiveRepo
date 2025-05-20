import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/ViewBody.dart';
import 'package:hivetutorial/widgets/addnoteButtomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        onPressed: (){
        showModalBottomSheet(context: context, builder: (cotext){
          return const Addnotebuttomsheet();
        });
      },child:const  Icon(Icons.add),),
      body:const NotesViewBody(),
    );
  }
}


