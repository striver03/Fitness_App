import 'package:flutter/material.dart';

import 'calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: const <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.chevron_left,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: const <Widget>[
            Align(
              child: Text(
                "History",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 80),
            Calendar(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
