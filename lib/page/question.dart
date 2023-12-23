import 'package:flutter/material.dart';
import 'package:riddles/components/answer_button.dart';
import 'package:riddles/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1)
        currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 199, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...currentQuestion.getSuffelledAndswers().map((item) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    AnswerButton(text: item, onTap: answerQuestion),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
