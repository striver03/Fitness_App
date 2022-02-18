import 'package:flutter/material.dart';

import 'form_card.dart';

class AddExerciseScreen extends StatelessWidget {
  const AddExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Center(
                child: Text(
                  "New Exercise",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 130,
                height: 130,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(154, 143, 143, 100),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Add Image",
                    style: TextStyle(),
                  ),
                ),
              ),
              const FormCard(),
            ],
          ),
        ),
      ),
    );
  }
}
