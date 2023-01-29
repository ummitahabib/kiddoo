import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiddo/Quiz/quizGame.dart';

class StartGame extends StatefulWidget {
  const StartGame({Key? key}) : super(key: key);

  @override
  _StartGameState createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff479AE7),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => QuizPage()));
          },
          child: Container(
            width: 293,
            height: 53,
            decoration: BoxDecoration(
                color: Color(0xffC54683),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 19,
                    height: 19,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                  ),
                  Text(
                    'Play Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    width: 19,
                    height: 19,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
