import 'package:flutter/material.dart';

import 'login/login_screen.dart';
import 'signup/signup_screen.dart';
import 'add_exercise/add_exercise_screen.dart';
import 'faq/faq_screen.dart';
import 'profile/profile_screen.dart';

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
        backgroundColor: const Color(0XFF22314F),
        primaryColor: const Color(0XFF0C1B38),
        accentColor: const Color(0XFF364E7D),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          button: TextStyle(color: Colors.white),
          caption: TextStyle(color: Colors.white),
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white),
          headline4: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          headline6: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          overline: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Colors.white),
          subtitle2: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: const FAQScreen(),
    );
  }
}
