import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/display_workouts.dart';
import 'package:focusgym/data/workouts_data.dart';

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(context) {
    return DisplayWorkouts(itemCount: 7, listName: selectWorkout);
  }
}
