import 'package:flutter/material.dart';

class WorkoutBox extends StatelessWidget {
  const WorkoutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 375, maxHeight: 100),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 18, 3, 3),
        ),
      ),
    );
  }
}
