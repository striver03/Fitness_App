import 'package:flutter/material.dart';

class AddExerciseInList extends StatefulWidget {
  const AddExerciseInList({Key? key}) : super(key: key);

  @override
  State<AddExerciseInList> createState() => _AddExerciseInListState();
}

class _AddExerciseInListState extends State<AddExerciseInList> {
  List<Widget> exerciseList = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: exerciseList,
    );
  }
}
