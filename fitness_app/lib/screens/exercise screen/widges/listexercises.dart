import 'package:flutter/material.dart';

import '../../startExercise Screen/startexercise.dart';

// ignore: camel_case_types, must_be_immutable
class ExercisesList extends StatelessWidget {
  ExercisesList({Key? key}) : super(key: key);

  List<Map<String, dynamic>> workouts = [
    {
      "name": "Push ups",
      "numberOfSets": 5,
      "numberOfReps": 8,
      "timeForASet": 30,
      "RestTime": 20
    },
    {
      "name": "Curls",
      "numberOfSets": 4,
      "numberOfReps": 8,
      "timeForASet": 70,
      "RestTime": 15
    },
    {
      "name": "Bench press",
      "numberOfSets": 4,
      "numberOfReps": 10,
      "timeForASet": 45,
      "RestTime": 18
    },
    {
      "name": "Sit ups",
      "numberOfSets": 6,
      "numberOfReps": 6,
      "timeForASet": 20,
      "RestTime": 30
    },
    {
      "name": "Pull ups",
      "numberOfSets": 3,
      "numberOfReps": 12,
      "timeForASet": 18,
      "RestTime": 24
    },
    {
      "name": "Chin ups",
      "numberOfSets": 4,
      "numberOfReps": 8,
      "timeForASet": 90,
      "RestTime": 28
    },
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StartExercise(
                            iscompleted: false,
                            timeForSet: workouts[index]["timeForASet"],
                            perSetreps: workouts[index]["numberOfReps"],
                            totalSets: workouts[index]["numberOfSets"],
                            RestTime: workouts[index]["RestTime"],
                            nameOfExercise: workouts[index]["name"],
                          )));
            },
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 17),
              child: Card(
                color: const Color(0XFF152646),
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: screenWidth * 0.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            workouts[index]["name"].toString().length <= 15
                                ? Text(workouts[index]["name"],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                                : Text(workouts[index]["name"],
                                    style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Set     " +
                                    workouts[index]["numberOfSets"].toString() +
                                    "x",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                "Reps     " +
                                    workouts[index]["numberOfReps"].toString() +
                                    "x",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.yellow),
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child:
                            // Image.network(
                            //   "blah blah",
                            //   height: double.infinity,
                            //   fit: BoxFit.fitHeight,
                            //   errorBuilder: (BuildContext context, Object exception,
                            //       StackTrace? stackTrace) {
                            //     return
                            Image.asset(
                          "assets/images/try.png",
                          height: double.infinity,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    //     Image.asset(
                    //   "assets/images/try.png",
                    //   height: double.infinity,
                    //   fit: BoxFit.fill,
                    //   width: double.infinity,
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: workouts.length);
  }
}
