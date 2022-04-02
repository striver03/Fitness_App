import 'dart:io';
import 'package:flutter/material.dart';

import 'edit_profile_image_input.dart';
import 'edit_profile_form_card.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var _initialValues = {
    "image": 'assets/images/profile_image.png',
    "name": "Rishabh Prasad",
    "age": 19,
    "gender": true,
    "height": 178,
    "weight": 70,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          TextButton(
            child: const Text(
              "SAVE",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Align(
              child: EditProfileImageInput(
                File(_initialValues['image']!.toString()),
              ),
            ),
            const SizedBox(height: 80),
            Align(
              child: EditProfileFormCard(
                _initialValues['name']!.toString(),
                int.parse(_initialValues['age'].toString()),
                _initialValues['gender']! == "true",
                int.parse(_initialValues['height']!.toString()),
                double.parse(_initialValues['weight']!.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
