import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/layout.dart';
import 'package:focusgym/data/workouts_data.dart';
import 'package:focusgym/workout_view.dart';

class WorkoutBox extends StatelessWidget {
  const WorkoutBox(
      {super.key,
      required this.boxTitle,
      required this.boxIcon,
      required this.index});

  final String boxTitle;
  final String boxIcon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AppLayout(
                  titleText: '${workoutsData[index].title} workout',
                  child: WorkoutView(index))),
        );
      },
      child: Container(
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 255, 0, 0), width: 0.3),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 0, 0).withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 18, 3, 3),
        ),
        child: Center(
          child: Text(
            boxTitle,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
