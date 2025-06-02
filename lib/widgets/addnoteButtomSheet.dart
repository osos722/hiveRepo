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
          child: InputForm(),
        ),
    );
  }
}

class InputForm extends StatefulWidget {
  const InputForm({
    super.key,
  });

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
   AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32,),
        CustomTextField(hintText: 'title',
        onSaved: (value){
          title=value;
        },
        ),
        CustomTextField(hintText: 'Body',maxLines: 5,
        onSaved: (value){
          subtitle=value;
        },
        ),
        Custombuttom(
          ontap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }
            else{
              autovalidateMode=AutovalidateMode.always;
            }
          },
        )
      ],
        );
  }
}