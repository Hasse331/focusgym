import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

var kHighlightColor = const Color.fromARGB(255, 255, 0, 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FocusGym',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.bebasNeueTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: kHighlightColor,
          shadow: kHighlightColor,
          // ···
          brightness: Brightness.dark,
          primary: kHighlightColor,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color.fromARGB(255, 60, 2, 2),
          foregroundColor: const Color.fromARGB(255, 200, 200, 200),
          shadowColor: kHighlightColor,
          elevation: 3,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FocusGym App'),
          ),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 108, 11, 11),
                Color.fromARGB(255, 17, 2, 2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Welcome to Focus Gym app"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Start workout',
                    style: GoogleFonts.bebasNeue(),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
