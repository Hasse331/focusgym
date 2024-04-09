import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/layout.dart';
import 'package:focusgym/workouts.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Focused Journey to Excellence",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 200, 200, 200),
          ),
        ),
        const Text(
          "No Distractions. Just Results.",
          style: TextStyle(
            color: Color.fromARGB(255, 200, 200, 200),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppLayout(
                    titleText: "Select Workout", child: Workouts()),
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
