import 'package:flutter/material.dart';
import 'package:riddles/data/questions.dart';
import 'package:riddles/page/question_screen.dart';
import 'package:riddles/page/result_screen.dart';
import 'package:riddles/page/start_screen.dart';

class Riddles extends StatefulWidget {
  const Riddles({Key? key}) : super(key: key);

  @override
  State<Riddles> createState() => _QuizState();
}

class _QuizState extends State<Riddles> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void goToQuestionScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void goToStartScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: goToQuestionScreen,
      title: 'Riddle',
      subTitle: 'Enjoy playing riddle',
    );
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
          onReset: goToStartScreen, chosenAnswers: selectedAnswers);
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
