import 'package:flutter/material.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/facebookBlog.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/followingBlog.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/forYou.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/jobsBlog.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/marketBlog.dart';
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/profilesBlog.dart';

class blogPage extends StatefulWidget {
  @override
  State<blogPage> createState() => _blogPageState();
}

class _blogPageState extends State<blogPage> {
  int currentIndex = 0;
  List blogs = [
    forYouBlog(),
    jobsBlog(),
    followingBlog(),
    marketBlog(),
    profilesBlog(),
    facebookBlog(),
  ];

  bool pressedColor1 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: Align(
        child: Column(
          children: [
            //appbar
            AppBar(
              toolbarHeight: 120,
              backgroundColor: Color.fromARGB(255, 255, 235, 235),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leadingWidth: 50,
              //leading icons
              leading: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: Image.asset(
                  'assets/icons/globe.png',
                ),
              ),
              centerTitle: false,
              //search bar as title
              title: Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(110, 229, 82, 82),
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                  ),
                  //search bar
                  child: TextField(
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(height: 1.0),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 30),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'MontSerratAlternates',
                        ),
                        focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10),
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent),
                        )),
                  ),
                ),
              ),
              //profilepic at actions
              actions: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 15, 0),
                  padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                  height: 45,
                  width: 45,
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/profile.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            //scroll options
            Container(
              padding: EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //for you button
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 0
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 0;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'FOR YOU',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //jobs button
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 1
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 1;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'JOBS',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //FOLOWWING BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 2
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 2;
                            });
                          },
                          child: SizedBox(
                            width: 75,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'FOLLOWING',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //MARKET BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 3
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 3;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'MARKET',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //PROFILES BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 4
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 4;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'PROFILES',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //facebook buton
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                currentIndex == 5
                                    ? Colors.white
                                    : Color.fromARGB(255, 219, 218, 218),
                              )),
                          onPressed: () {
                            setState(() {
                              currentIndex == 5;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'FACEBOOK',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            Container(
              height: 450,
              child: blogs[currentIndex],
            )
          ],
        ),
      ),
    );
  }
}
