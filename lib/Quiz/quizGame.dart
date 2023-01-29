import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiddo/Quiz/quizBrain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // late List<Icon> scoreKeeper = [];

  late int scoreKeeper = 0;

  void checkAnswer(bool pickCorrectAns) {
    bool correctAnswer = quizBrain.getAnswer();

    setState(() {
      if (quizBrain.getLastQuestion() == true) {
        quizBrain.resetQuestion();
      } else {
        if (pickCorrectAns == correctAnswer) {
          scoreKeeper++;
          // scoreKeeper.add(Icon(
          //   Icons.check,
          //   color: Colors.green,
          // ));
        } else {
          scoreKeeper + 0;
        }
      }
      quizBrain.nextQuestion();
    });
  }

  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff479AE7),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 340,
                  height: 224,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffB298C9)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 9, left: 7, right: 8),
                  padding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                  width: 322,
                  height: 208,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 4.0,
                        color: Color(0xffBC3073),
                      ),
                      color: Color(0xffC54683)),
                  child: Text(
                    quizBrain.getQuestionText(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Row(
                children: [
                  Container(
                    width: 109,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 4.0,
                          color: Color(0xff518925),
                        ),
                        color: Color(0xff6CB036)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          checkAnswer(true);
                        },
                        child: Text(
                          'True',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Container(
                    width: 109,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 4.0,
                          color: Color(0xff8B2109),
                        ),
                        color: Color(0xffD93714)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          checkAnswer(false);
                        },
                        child: Text(
                          ' False',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   child: Text('Score: $scoreKeeper'),
            // ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 3),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Score: $scoreKeeper'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
