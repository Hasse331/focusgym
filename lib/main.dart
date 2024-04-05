import 'package:flutter/material.dart';
import 'package:focusgym/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

var kHighlightColor = const Color.fromARGB(255, 255, 0, 0);
var kforegroundColor = const Color.fromARGB(255, 200, 200, 200);

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
          primary: const Color.fromARGB(255, 14, 145, 21),
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color.fromARGB(255, 60, 2, 2),
          foregroundColor: kforegroundColor,
          shadowColor: kHighlightColor,
          elevation: 3,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: kforegroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FocusGym - focus on what matters'),
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
            child: const Home(),
          )),
    );
  }
}
