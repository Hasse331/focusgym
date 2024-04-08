import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/workout_box.dart';
import 'package:focusgym/data/workouts_data.dart';

class DisplayWorkouts extends StatelessWidget {
  const DisplayWorkouts(
      {super.key,
      required this.itemCount,
      required this.listName,
      this.description});

  final int itemCount;
  final List<Workout> listName;
  final String? description;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 800 ? 2 : 1;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        itemCount: 7, // Number of items
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              crossAxisCount, // 1 for narrow screens, 2 for wider screens
          childAspectRatio:
              2, // Adjust based on your item's content and desired aspect ratio
        ),
        itemBuilder: (context, index) {
          return WorkoutBox(
            boxTitle: listName[index].title,
            boxIcon: "Icon",
            index: index,
          ); // Your custom widget
        },
      ),
    );
  }
}
