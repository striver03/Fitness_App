import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(154, 143, 143, 100),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
