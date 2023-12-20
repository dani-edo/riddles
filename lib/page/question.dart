import 'package:flutter/material.dart';
import 'package:riddles/components/answer_button.dart';
import 'package:riddles/data/questions.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              )),
          const SizedBox(
            height: 40,
          ),
          ...currentQuestion.answers
              .map((item) => AnswerButton(text: item, onTap: () {})),
        ],
      ),
    );
  }
}
