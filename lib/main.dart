import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'categoryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
            },
            child: RichText(
              text: TextSpan(
                text: 'KID',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: 'Pacifico'),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'DOO',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 32,
                          color: Color(0xffC54683))),
                ],
              ),
            )),
      ),
    );
  }
}
