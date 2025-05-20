import 'package:flutter/material.dart';
import 'package:hivetutorial/widgets/CustomSearshIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearshIcon()
      ],
    );
  }
}