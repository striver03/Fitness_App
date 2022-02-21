import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'calendar.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

Container _buildData(IconData icon, int value, String text) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: <Widget>[
        Icon(icon),
        const Spacer(),
        Text("$value $text"),
      ],
    ),
  );
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Activity on ${DateFormat.yMMMd().format(DateTime.now())}"),
              const Spacer(),
              const Icon(Icons.linked_camera),
            ],
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Row(
              children: <Widget>[
                _buildData(Icons.fire_extinguisher, 10, "cal"),
                _buildData(Icons.timer, 1, "hours"),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              _buildData(Icons.run_circle, 8000, "steps"),
              _buildData(Icons.map, 5, "km"),
            ],
          ),
        ],
      ),
    );
  }
}
