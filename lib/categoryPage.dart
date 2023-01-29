import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiddo/startGame.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff479AE7),
      body: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80, top: 100),
        child: Column(
          children: [
            Text(
              'Select From Category',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StartGame()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 123,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffB298C9)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 5, bottom: 8, left: 5, right: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                        width: 107,
                        height: 112,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 4.0,
                              color: Color(0xffBC3073),
                            ),
                            color: Color(0xffC54683)),
                        child: Text(
                          ' Quiz',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 123,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffB298C9)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                      width: 107,
                      height: 112,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 4.0,
                            color: Color(0xffBC3073),
                          ),
                          color: Color(0xffC54683)),
                      child: Text(
                        'Learn',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 123,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffB298C9)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                      width: 107,
                      height: 112,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 4.0,
                            color: Color(0xffBC3073),
                          ),
                          color: Color(0xffC54683)),
                      child: Text(
                        'Story  Time',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 123,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffB298C9)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                      width: 107,
                      height: 112,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 4.0,
                            color: Color(0xffBC3073),
                          ),
                          color: Color(0xffC54683)),
                      child: Text(
                        'Cartoons',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

categoryBuidKey() {
  Stack(
    children: [
      Container(
        width: 120,
        height: 123,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xffB298C9)),
      ),
      Container(
        margin: EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 8),
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
        width: 107,
        height: 112,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 4.0,
              color: Color(0xffBC3073),
            ),
            color: Color(0xffC54683)),
        child: Text(
          'Quize',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      )
    ],
  );
}
