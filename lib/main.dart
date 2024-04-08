import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focusgym/home.dart';
import 'package:focusgym/custom_widgets/layout.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

var kHighlightColor = const Color.fromARGB(255, 255, 0, 0);
var kforegroundColor = const Color.fromARGB(255, 200, 200, 200);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
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
          onPrimary: kHighlightColor,
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
      home: const AppLayout(
          titleText: "FocusGym - focus on what matters", child: Home()),
    );
  }
}
