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
        decoration: BoxDecoration(color: Color(0xFF3625AF)),
        height: MediaQuery.of(context).size.height > 100.0
            ? MediaQuery.of(context).size.height
            : 100.0,
        width: MediaQuery.of(context).size.width,
        // height: 100.0,
        child: Column(children: [
          Container(
            width: 300,
            margin: const EdgeInsets.symmetric(vertical: 100),
            child: Image.asset('assets/images/quiz-logo.png'),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: const Text(
              'Let\'s Play Fun Quiz',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(elevation: 3),
              child: const Text('Play'))
        ]),
      ));
    });
  }
}
