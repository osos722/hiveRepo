import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/CustomSearshIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.text,required this.icona});
 final String text;
 final IconData icona;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearshIcon(icon: icona,)
      ],
    );
  }
}