import 'package:flutter/material.dart';
import 'package:riddles/components/answer_button.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Question...',
              style: TextStyle(
                color: Colors.white,
              )),
          const SizedBox(
            height: 40,
          ),
          AnswerButton(text: 'Answer', onTap: () {}),
          AnswerButton(text: 'Answer', onTap: () {}),
          AnswerButton(text: 'Answer', onTap: () {}),
        ],
      ),
    );
  }
}
