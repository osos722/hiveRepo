import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/customApppBar.dart';
import 'package:hivetutorial/widgets/customTextField.dart';

class EditnoteBody extends StatelessWidget {
  const EditnoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        CustomAppBar(text: 'Edit', icona: Icons.check,),
        SizedBox(height: 50,),
        CustomTextField(hintText: 'title'),
        SizedBox(height: 16,),
        CustomTextField(hintText: 'body',maxLines: 5,),
      ],),
    );
  }
}