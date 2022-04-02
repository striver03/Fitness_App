import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class workoutsList extends StatelessWidget {
  workoutsList({Key? key}) : super(key: key);

  List<Map<String, dynamic>> workouts = [
    {"name": "Leg Day", "numberOfExercises": 5, "Duration": 130},
    {"name": "Push Day", "numberOfExercises": 4, "Duration": 90},
    {"name": "Pull Day", "numberOfExercises": 6, "Duration": 150},
    {"name": "Shoulder Day", "numberOfExercises": 3, "Duration": 50},
    {"name": "Back Day", "numberOfExercises": 4, "Duration": 70},
    {"name": "Cardio Day", "numberOfExercises": 5, "Duration": 65},
  ];

  var daysList = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  //below method will return the list of days as children of a row
  Widget getdaysListItem() {
    List<Widget> wlist = [];
    for (int i = 0; i < daysList.length; i++) {
      wlist.add(Text(
        daysList[i],
        style: const TextStyle(color: Colors.white, fontSize: 11),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: wlist,
    );
  }

  //var days = "S M T W T F S";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 17),
            child: Card(
              color: const Color(0XFF152646),
              elevation: 5,
              child: ListTile(
                leading: SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      workouts[index]["name"].toString().length <= 8
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
                        height: 15,
                      ),
                      getdaysListItem()
                    ],
                  ),
                ),
                title: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.blur_circular_sharp,
                        color: Colors.white,
                      ),
                      const Text(
                        "Total Exercises",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Text(workouts[index]["numberOfExercises"].toString(),
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                trailing: Column(
                  children: [
                    const Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    const Text("Duration",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(workouts[index]["Duration"].toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: workouts.length);
  }
}
