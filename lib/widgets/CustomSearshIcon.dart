import 'package:flutter/material.dart';

class CustomSearshIcon extends StatelessWidget {
  const CustomSearshIcon({super.key,required this.icon});
  final IconData icon;
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