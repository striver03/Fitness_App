import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bhag Dod"),
        ),
        body: const Center(
          child: Text("Bhago bhai bhago"),
        ),
      )));
}
