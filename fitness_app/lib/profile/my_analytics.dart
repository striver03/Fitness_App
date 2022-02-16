import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAnalytics extends StatelessWidget {
  const MyAnalytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.2,
      color: const Color(0XFF152646),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 8, left: 8),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "My Analytics",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.chevronCircleLeft),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.chevronCircleRight),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          // chart
        ],
      ),
    );
  }
}
