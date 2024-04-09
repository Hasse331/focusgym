import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/layout.dart';
import 'package:focusgym/data/workouts_data.dart';
import 'package:focusgym/utils/launch_url.dart';
import 'package:focusgym/workout_view.dart';

class WorkoutBox extends StatelessWidget {
  const WorkoutBox(
      {super.key,
      this.isSelectWorkoutView = false,
      required this.boxTitle,
      this.boxDescription,
      required this.index});

  final String boxTitle;
  final String? boxDescription;
  final int index;
  final bool isSelectWorkoutView;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isSelectWorkoutView) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AppLayout(
                    titleText: '${selectWorkout[index].title} workout',
                    child: WorkoutView(index))),
          );
        } else {
          // If check is there because of apple's closed ecosystem problems, so
          // not sure if it will work or not. So have to test that with IOS
          // device / simulator later.
          if (kIsWeb) {
            launchURL(boxTitle);
          } else {
            if (!Platform.isIOS) launchURL(boxTitle);
          }
        }
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                boxTitle,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              if (!isSelectWorkoutView)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    boxDescription!, // ! because this must be truthy
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
