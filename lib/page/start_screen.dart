import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
    required this.startQuiz,
    required this.title,
    this.subTitle = 'subtitle default',
  }) : super(key: key);
  final String title;
  final String subTitle;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'Let\'s Play Fun Quiz',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('Start'),
              icon: const Icon(Icons.arrow_right_alt),
            )
          ],
        ),
      );
    });
  }
}
