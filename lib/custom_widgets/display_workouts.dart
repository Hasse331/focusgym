import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/workout_box.dart';
import 'package:focusgym/data/workouts_data.dart';

class DisplayWorkouts extends StatelessWidget {
  const DisplayWorkouts(
      {super.key, required this.workoutList, this.description});

  final List<Workout> workoutList;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final isSelectView = workoutList.length <= 7;
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 800 ? 2 : 1;
    return GridView.builder(
      itemCount: workoutList.length, // Number of items
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            crossAxisCount, // 1 for narrow screens, 2 for wider screens
        childAspectRatio:
            2, // Adjust based on your item's content and desired aspect ratio
      ),
      itemBuilder: (context, index) {
        return WorkoutBox(
          boxTitle: workoutList[index].title,
          boxDescription: workoutList[index].description,
          isSelectWorkoutView: isSelectView,
          index: index, // THIS IS GIVING INCORRECT INDEX WHEN IN WORKOUT VIEW
        ); // Your custom widget
      },
    );
  }
}
