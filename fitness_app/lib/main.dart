import 'package:flutter/material.dart';

// import './screens/workout screen/workout.dart';
import './screens/exercise screen/exercises.dart';
// import './screens/About us screen/about.dart';
import './screens/Home screen/home.dart';
//import './screens/startExercise Screen/startexercise.dart';
import 'package:provider/provider.dart';
import './providers/timer.dart';

void main() {
  runApp(ChangeNotifierProvider(
          create: (ctx) => TimerModel(),
          child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // home: const workoutScreen()));
              //home: const ExercisesScreen()))
              //home: const AboutScreen()));
              home: const Homescr()))
      // home: StartExercise(
      //   iscompleted: false,
      // )))

      );
}
