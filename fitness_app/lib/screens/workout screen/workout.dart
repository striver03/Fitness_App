import 'package:flutter/material.dart';

import './widgets/listworkout.dart';

// ignore: camel_case_types
class workoutScreen extends StatelessWidget {
  const workoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double statusbarheight = MediaQuery.of(context).padding.top;
    // print(statusbarheight);
    double screensize = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: const Color(0XFFF95C04),
                borderRadius: BorderRadius.circular(50)),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0XFF364E7D),
                  borderRadius: BorderRadius.circular(50)),
              child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.add,
                    color: Color(0XFFF95C04),
                    size: 28,
                  )),
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      //.centerFloat, //using scaffold property to set location of this button
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: const Color(0XFF22314F),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: screensize,
          color: const Color(0XFF22314F),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: Row(
                  children: const [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Workouts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 20, left: 20, right: 20),
                  height: screensize - 161.7,
                  decoration: const BoxDecoration(
                      color: Color(0XFF0C1B38),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: workoutsList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
