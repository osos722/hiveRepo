import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,
   this.maxLines=1, this.onSaved
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved:onSaved ,
      validator: (value){
        if(value?.isEmpty??true){
          return 'failed is empty';
        }
      },
      maxLines:maxLines ,
      decoration: InputDecoration(
        hintText: 'title',
        hintStyle:const TextStyle(
          color: Colors.red
        ),
        border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(8),
               borderSide:const BorderSide(
                color: Colors.white
               ),             
        ),
        enabledBorder: OutlineInputBorder(
               borderRadius:BorderRadius.circular(8),
               borderSide:const BorderSide(
                color: Colors.white
               ),
               ),                         
      ),
    );
  }
}