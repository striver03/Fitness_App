import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);

  @override
  State<FormCard> createState() => _FormCardState();
}

// Function builder which provides layout of Set and Reps
Container _buildSetRep(
  BuildContext ctx,
  String content,
  int currVal,
  void Function(int) process,
) {
  return Container(
    width: MediaQuery.of(ctx).size.width * 0.35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Theme.of(ctx).accentColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          content,
          style: const TextStyle(color: Colors.white),
        ),
        Row(
          children: <Widget>[
            NumberPicker(
              minValue: 1,
              maxValue: 99,
              itemCount: 1,
              itemWidth: 30,
              value: currVal,
              textStyle: const TextStyle(color: Colors.white),
              selectedTextStyle: const TextStyle(color: Colors.deepOrange),
              onChanged: process,
            ),
            const Text(
              "x",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}

// Function builder which provides layout of Duration and Rest
Container _buildDurationRest(
  BuildContext ctx,
  String content,
  int currVal,
  void Function(int) process,
) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 175,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(ctx).accentColor,
            borderRadius: BorderRadius.circular(40),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              content,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(ctx).size.width * 0.4,
          decoration: BoxDecoration(
            color: Theme.of(ctx).accentColor,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NumberPicker(
                minValue: 00,
                maxValue: 99,
                itemWidth: 30,
                itemHeight: 40,
                value: currVal,
                textStyle: const TextStyle(color: Colors.white),
                selectedTextStyle: const TextStyle(color: Colors.deepOrange),
                // decoration: ,
                onChanged: process,
              ),
              const Text(
                ":",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              NumberPicker(
                minValue: 00,
                maxValue: 99,
                itemWidth: 30,
                itemHeight: 40,
                value: currVal,
                textStyle: const TextStyle(color: Colors.white),
                selectedTextStyle: const TextStyle(color: Colors.deepOrange),
                onChanged: process,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _FormCardState extends State<FormCard> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    int _currentValue = 3;
    return Container(
      height: 520,
      width: deviceSize.width * 0.9,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        // boxShadow:
      ),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: deviceSize.width * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
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
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: deviceSize.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildSetRep(
                      context,
                      "Set",
                      _currentValue,
                      (value) {
                        setState(
                          () {
                            _currentValue = value;
                          },
                        );
                      },
                    ),
                    _buildSetRep(
                      context,
                      "Reps",
                      _currentValue,
                      (value) {
                        setState(
                          () {
                            _currentValue = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              _buildDurationRest(
                context,
                "Duration of each set",
                _currentValue,
                (value) {
                  setState(
                    () {
                      _currentValue = value;
                    },
                  );
                },
              ),
              _buildDurationRest(
                context,
                "Rest between sets",
                _currentValue,
                (value) {
                  setState(
                    () {
                      _currentValue = value;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
