import 'package:flutter/material.dart';
import 'package:focusgym/workouts.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Welcome to Focus Gym app",
          style: TextStyle(fontSize: 25),
        ),
        const Text(
          "Work hard and focus on what matters",
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Workouts(),
              ),
            );
          },
          child: Text(
            'Start workout',
            style: GoogleFonts.bebasNeue(),
          ),
        )
      ],
    ));
  }
}
