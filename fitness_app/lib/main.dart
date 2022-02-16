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
      ),
      home: const FAQScreen(),
    );
  }
}
