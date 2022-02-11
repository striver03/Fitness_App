import 'package:flutter/material.dart';

import 'add_exercise/add_exercise_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //   colorScheme: ColorScheme(
        //       brightness: brightness,
        //       primary: primary,
        //       onPrimary: onPrimary,
        //       secondary:  const Color.fromRGBO(34, 49, 79, 0),
        //       onSecondary: onSecondary,
        //       error: error,
        //       onError: onError,
        //       background: background,
        //       onBackground: onBackground,
        //       surface: surface,
        //       onSurface: onSurface),
        // ),
        backgroundColor: const Color.fromRGBO(34, 49, 79, 100),
        primaryColor: const Color.fromRGBO(12, 27, 56, 100),
        accentColor: const Color.fromRGBO(54, 78, 125, 100),
      ),
      home: const AddExerciseScreen(),
    );
  }
}
