import 'package:flutter/material.dart';
import 'package:riddles/data/questions.dart';
import 'package:riddles/page/question_screen.dart';
import 'package:riddles/page/start_screen.dart';

class Riddles extends StatefulWidget {
  const Riddles({Key? key}) : super(key: key);

  @override
  State<Riddles> createState() => _QuizState();
}

class _QuizState extends State<Riddles> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: switchScreen,
      title: 'Riddle',
      subTitle: 'Enjoy playing riddle',
    );
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
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
          child: screenWidget,
        )));
  }
}
