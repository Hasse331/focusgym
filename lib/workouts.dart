import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/workout_box.dart';
import 'package:focusgym/data/workouts_data.dart';

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 800 ? 2 : 1;

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: GridView.builder(
        itemCount: 6, // Number of items
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              crossAxisCount, // 1 for narrow screens, 2 for wider screens
          childAspectRatio:
              2, // Adjust based on your item's content and desired aspect ratio
        ),
        itemBuilder: (context, index) {
          return WorkoutBox(
            boxTitle: workoutsData[index].title,
            boxIcon: "Icon",
            index: index,
          ); // Your custom widget
        },
      ),
    );
  }
}
