class Workout {
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int NumberOfExercises;
  int durationInMin;
  List<int> iswhichDay;

  Workout(
      // ignore: non_constant_identifier_names
      {required this.Name,
      // ignore: non_constant_identifier_names
      required this.NumberOfExercises,
      required this.durationInMin,
      required this.iswhichDay});
}

List<dynamic> days = ["S", "M", "T", "W", "T", "F", "S"];

// ignore: non_constant_identifier_names
List<Workout> AllWorkouts = [
  Workout(
      Name: "Leg Day",
      NumberOfExercises: 4,
      durationInMin: 54,
      iswhichDay: [0, 1, 1, 0, 0, 0, 0]),
  Workout(
      Name: "Push Day",
      NumberOfExercises: 6,
      durationInMin: 74,
      iswhichDay: [0, 1, 0, 1, 0, 0, 1]),
  Workout(
      Name: "Pull Day",
      NumberOfExercises: 3,
      durationInMin: 50,
      iswhichDay: [0, 1, 1, 0, 1, 0, 1]),
  Workout(
      Name: "Cardio Day",
      NumberOfExercises: 2,
      durationInMin: 40,
      iswhichDay: [0, 1, 1, 0, 0, 0, 1]),
  Workout(
      Name: "Back Day",
      NumberOfExercises: 5,
      durationInMin: 60,
      iswhichDay: [0, 1, 1, 0, 0, 1, 0]),
];
