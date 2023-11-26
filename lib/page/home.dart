import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(
      {Key? key, required this.title, this.subTitle = 'subtitle default'})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
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
          child: Center(
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
                const Text(
                  'Let\'s Play Fun Quiz',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  label: const Text('Start'),
                  icon: const Icon(Icons.arrow_right_alt),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
