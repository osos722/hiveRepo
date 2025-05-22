import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,
   this.maxLines=1
  });
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
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