import 'package:flutter/material.dart';

class WorkoutBox extends StatelessWidget {
  const WorkoutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        border:
            Border.all(color: const Color.fromARGB(255, 255, 0, 0), width: 0.3),
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
    );
  }
}
