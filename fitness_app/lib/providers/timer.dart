import 'dart:async';
import 'package:flutter/material.dart';

import '../screens/startExercise Screen/startexercise.dart';

class TimerModel with ChangeNotifier {
  int set = 0;
  int rest = 0;
  bool isrest = false;
  bool ispaused = false;

  int setNum = 0;
  // ignore: non_constant_identifier_names
  int Totalsets = 0;

  void changePause() {
    ispaused = !ispaused;
  }

  // ignore: non_constant_identifier_names
  void setSets(int Tsets) {
    if (Totalsets == 0) {
      Totalsets = Tsets;
    }
    setNum++;
  }

  // ignore: non_constant_identifier_names
  MyTimer(int SetTime, int restTime, int perSetReps, String nameOfExercise,
      BuildContext context) async {
    set = SetTime;
    rest = restTime;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      //this function will run ever second
      if (set > 0 && !ispaused) {
        set--;
      }
      if (set == 0) {
        if (setNum == Totalsets) {
          timer.cancel();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StartExercise(
                        nameOfExercise: nameOfExercise,
                        RestTime: restTime,
                        perSetreps: perSetReps,
                        timeForSet: SetTime,
                        totalSets: Totalsets,
                        iscompleted: true,
                      )));
        } else {
          isrest = true;
          rest--;
          // Timer.periodic(const Duration(seconds: 1), (timer2) {
          //   rest--;
          // if (rest == 0) {
          //     isrest = false;
          //     // Navigator.push(context,
          //     //     MaterialPageRoute(builder: (context) =>StartExercise()));
          //   }
          //   notifyListeners(); //for inner timer change
          // });
          if (rest == 0) {
            isrest = false;
            timer.cancel();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StartExercise(
                          nameOfExercise: nameOfExercise,
                          RestTime: restTime,
                          perSetreps: perSetReps,
                          timeForSet: SetTime,
                          totalSets: Totalsets,
                          iscompleted: false,
                        )));
          }
        }
      }
      notifyListeners();
    });
  }
}
