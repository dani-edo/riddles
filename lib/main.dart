import 'package:flutter/material.dart';
import 'package:riddles/page/home.dart';

void main(List<String> args) {
  runApp(const Riddles());
}

class Riddles extends StatelessWidget {
  const Riddles({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Riddle',
      home: Home(
        title: 'Riddle',
        subTitle: 'Enjoy playing riddle',
      ),
    );
  }
}
