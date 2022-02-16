import 'package:flutter/material.dart';

import 'my_stats.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Container _buildBasicDetail(int value, String heading) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            value.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              heading,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }

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
                Icons.filter_list_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(154, 143, 143, 100),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  "Profile Image",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "Rishabh Prasad",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Align(
                          child: Container(
                            margin: const EdgeInsets.only(top: 70),
                            padding: const EdgeInsets.all(8),
                            width: deviceSize.width * 0.95,
                            child: const MyStats(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -15,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0XFF162A48),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: <Widget>[
                            _buildBasicDetail(18, "AGE"),
                            const VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              indent: 15,
                              endIndent: 15,
                            ),
                            _buildBasicDetail(67, "WEIGHT"),
                            const VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              indent: 15,
                              endIndent: 15,
                            ),
                            _buildBasicDetail(178, "HEIGHT"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
