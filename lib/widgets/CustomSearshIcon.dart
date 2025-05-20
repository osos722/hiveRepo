import 'package:flutter/material.dart';

class CustomSearshIcon extends StatelessWidget {
  const CustomSearshIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 45,
      width: 45,
      decoration:BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20)
      ),
      child:const Center(
        child: Icon(Icons.search_sharp,
        size: 25,
        ),
      ),
    );
  }
}