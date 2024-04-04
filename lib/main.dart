import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 179, 64, 255),
          // ···
          brightness: Brightness.dark,
          primary: const Color.fromARGB(255, 110, 17, 173),
          background: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FocusGym App'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Welcome to Focus Gym app"),
              ElevatedButton(
                onPressed: () {},
                child: const Text("button"),
              )
            ],
          ))),
    );
  }
}
