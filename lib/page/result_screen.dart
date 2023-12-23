import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riddles/components/questions_summary.dart';
import 'package:riddles/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.onReset, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final void Function() onReset;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered X of Y question correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 199, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: onReset,
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
