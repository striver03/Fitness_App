import 'package:flutter/material.dart';

class Insights extends StatelessWidget {
  const Insights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.2,
      color: const Color(0XFF152646),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            Text("Insights"),
            Row(
              children: <Widget>[
                Text("BMI"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
