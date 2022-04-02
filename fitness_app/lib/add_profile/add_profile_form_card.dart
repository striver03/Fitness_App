import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ProfileFormCard extends StatefulWidget {
  const ProfileFormCard({Key? key}) : super(key: key);

  @override
  State<ProfileFormCard> createState() => _ProfileFormCardState();
}

Container _buildHeightWeight(BuildContext context, String heading) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: heading,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 0.5),
        ),
        fillColor: Theme.of(context).accentColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

class _ProfileFormCardState extends State<ProfileFormCard> {
  int _currentValue = 19;
  bool _maleSelected = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 460,
          width: deviceSize.width * 0.9,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    right: 5,
                    bottom: 5,
                    left: 5,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                      ),
                      fillColor: Theme.of(context).accentColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Age",
                        style: TextStyle(fontSize: 16),
                      ),
                      NumberPicker(
                        axis: Axis.horizontal,
                        minValue: 1,
                        maxValue: 100,
                        value: _currentValue,
                        itemWidth: 60,
                        selectedTextStyle: const TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 20,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _currentValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Gender",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  _maleSelected
                                      ? Icons.circle_rounded
                                      : Icons.circle_outlined,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Male",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                _maleSelected = true;
                              });
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(5),
                              backgroundColor: _maleSelected
                                  ? const Color(0XFF172A4F)
                                  : const Color(0XFF616382),
                            ),
                          ),
                          const SizedBox(width: 20),
                          TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  _maleSelected
                                      ? Icons.circle_outlined
                                      : Icons.circle_rounded,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Female",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                _maleSelected = false;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: _maleSelected
                                  ? const Color(0XFF616382)
                                  : const Color(0XFF172A4F),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                _buildHeightWeight(context, "Height (in cm)"),
                _buildHeightWeight(context, "Weight (in kg)"),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0XFFF95C04),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              child: const Text(
                "ADD",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
