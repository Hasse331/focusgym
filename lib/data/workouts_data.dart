import 'package:focusgym/data/arms_workout.dart';
import 'package:focusgym/data/back_workout.dart';
import 'package:focusgym/data/cardio_workout.dart';
import 'package:focusgym/data/chest_exercise.dart.dart';
import 'package:focusgym/data/core_workout.dart';
import 'package:focusgym/data/legs_workout.dart';
import 'package:focusgym/data/shoulders_workout.dart';

class Workout {
  String title;
  String link;
  String description;
  List<String>? links;
  Workout(this.title, this.link, this.description, {this.links});
}

List<Workout> selectWorkout = [
  Workout("Shoulders", "image_url", "description"),
  Workout("Chest", "image_url", "description"),
  Workout("Back", "image_url", "description"),
  Workout("Arms", "image_url", "description"),
  Workout("Legs", "image_url", "description"),
  Workout("Core", "image_url", "description"),
  Workout("Cardio", "image_url", "description"),
];

List<List<Workout>> workoutLists = [
  shouldersWorkout,
  chestWorkout,
  backWorkout,
  armWorkout,
  legWorkout,
  coreWorkout,
  cardioWorkout,
];
