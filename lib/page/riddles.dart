import 'package:flutter/material.dart';
import 'package:riddles/page/start_screen.dart';

class Riddles extends StatefulWidget {
  const Riddles({Key? key}) : super(key: key);

  @override
  State<Riddles> createState() => _QuizState();
}

class _QuizState extends State<Riddles> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Riddle',
        home: Scaffold(
          // appBar: AppBar(title: Text('App Bar Ttitle')),
          body: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 78, 13, 151),
                    Color.fromARGB(255, 135, 17, 186)
                  ]),
            ),
            child: const StartScreen(
              title: 'Riddle',
              subTitle: 'Enjoy playing riddle',
            ),
          ),
        ));
  }
}
