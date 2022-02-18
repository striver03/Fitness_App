import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
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
  IconData timeIcon,
) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 170,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(ctx).accentColor,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              content,
            ),
          ),
        ),
        // CupertinoRoundedDurationPicker.show(
        //   ctx,
        //   background: Theme.of(ctx).backgroundColor,
        //   initialDurationPickerMode: CupertinoTimerPickerMode.ms,
        //   initialTimerDuration: Duration(seconds: initialSeconds),
        //   onDurationChanged: (value) {},
        // ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(ctx).size.width * 0.4,
              decoration: BoxDecoration(
                color: Theme.of(ctx).accentColor,
                borderRadius: BorderRadius.circular(8),
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
                    selectedTextStyle: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 16,
                    ),
                    // decoration: ,
                    onChanged: process,
                  ),
                  const Text(
                    ":",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  NumberPicker(
                    minValue: 00,
                    maxValue: 99,
                    itemWidth: 30,
                    itemHeight: 40,
                    value: currVal,
                    selectedTextStyle: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 16,
                    ),
                    onChanged: process,
                  ),
                ],
              ),
            ),
            Positioned(
              top: -17.5,
              child: Icon(
                timeIcon,
                size: 35,
              ),
            ),
          ],
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
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 520,
          width: deviceSize.width * 0.9,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
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
                    "Duration of set",
                    _currentValue,
                    (value) {
                      setState(
                        () {
                          _currentValue = value;
                        },
                      );
                    },
                    Icons.access_time,
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
                    Icons.timer,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const Icon(
                  Icons.circle,
                  color: Colors.deepOrange,
                  size: 50,
                ),
                Icon(
                  Icons.add_circle,
                  color: Theme.of(context).primaryColor,
                  size: 40,
                ),
              ],
            ),
            onPressed: () {
              CupertinoRoundedDurationPicker.show(
                context,
                background: Theme.of(context).backgroundColor,
                textColor: Colors.white,
                initialDurationPickerMode: CupertinoTimerPickerMode.ms,
                initialTimerDuration: const Duration(seconds: 3),
                onDurationChanged: (value) {},
              );
            },
          ),
        ),
      ],
    );
  }
}
