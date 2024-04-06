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
      margin: const EdgeInsets.only(top: 25),
      child: GridView.builder(
        itemCount: 6, // Number of items
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              crossAxisCount, // 1 for narrow screens, 2 for wider screens
          childAspectRatio:
              2, // Adjust based on your item's content and desired aspect ratio
        ),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
                const Text(
                  "Select today's workout: ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Expanded(
                  child: WorkoutBox(
                    boxTitle: workoutsData[index].title,
                    boxIcon: "Icon",
                    index: index,
                  ), // You custom widget
                )
              ],
            );
          }
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
