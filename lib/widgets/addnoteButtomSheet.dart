import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/customButtom.dart';
import 'package:hivetutorial/widgets/customTextField.dart';

class Addnotebuttomsheet extends StatelessWidget {
  const Addnotebuttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32,),
              CustomTextField(hintText: 'title',),
              CustomTextField(hintText: 'Body',maxLines: 5,),
              Custombuttom()
            ],
              ),
        ),
    );
  }
}