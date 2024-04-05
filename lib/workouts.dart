import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/workout_box.dart';

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 600 ? 2 : 1;
    return GridView.builder(
      itemCount: 10, // Number of items
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            crossAxisCount, // 1 for narrow screens, 2 for wider screens
        childAspectRatio:
            4, // Adjust based on your item's content and desired aspect ratio
      ),
      itemBuilder: (context, index) {
        return const WorkoutBox(); // Your custom widget
      },
    );
  }
}
