import 'package:flutter/material.dart';

import 'edit_repetition.dart';

class EditWorkoutScreen extends StatelessWidget {
  const EditWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Text(
                "New Workout",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: deviceSize.width * 0.8,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Add Label",
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: Theme.of(context).accentColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Repeat",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const EditRepetition(),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              height: 50,
              width: double.infinity,
              child: TextButton(
                child: const Text(
                  "Add Exercise",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0XFFF95C04),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
