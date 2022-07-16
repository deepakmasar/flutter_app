// ignore_for_file: deprecated_member_use
import 'package:flutter_practice_1/mainPage/pages/blog%20pages/blogPage.dart';
import 'package:flutter_practice_1/mainPage/pages/create%20profile/portfolio.dart';
import 'package:flutter_practice_1/mainPage/pages/profile%20page/newedituser.dart';
// import 'package:flutter_practice_1/loginScreen.dart';
// import 'package:flutter_practice_1/mainPage/pages/blogPage.dart';
// import 'package:flutter_practice_1/mainPage/pages/create%20profile/portfolio.dart';
// import 'package:flutter_practice_1/mainPage/pages/profile%20page/newedituser.dart';
import './pages/profile page/profilePage.dart';
import './pages/resume page/resume.dart';
import 'package:flutter/material.dart';
import './pages/resume page/resumeAnalysis.dart';
import './pages/home page/HomePage.dart';
import 'pages/create profile/CreateProfile_1.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  static int currentIndex = 0;

  final pages = [
    HomePage(),
    blogPage(),
    PortfolioTheme(),
    ResumePage(),
    profilePage(),
    edituser(),
    resumeAnalysis(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool showfab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 250, 250),
          border: Border.all(color: Colors.transparent),
        ),
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //home button
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                  // pageController.previousPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.bounceIn);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        currentIndex == 0
                            ? 'assets/icons/home_red.png'
                            : 'assets/icons/home.png',
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: Text(
                          'HOME',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'MontSerratAlternates',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0,
                          10,
                          0,
                          0,
                        ),
                        height: 8,
                        width: 14,
                        decoration: BoxDecoration(
                            color: currentIndex == 0
                                ? Color.fromARGB(255, 172, 21, 11)
                                : Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                    ])),
              ),
              //Blog button
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                  // pageController.previousPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.bounceIn);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    width: 50,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        currentIndex == 1
                            ? 'assets/icons/blog_red.png'
                            : 'assets/icons/blog.png',
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: Text(
                          'BLOG',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'MontSerratAlternates',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0,
                          10,
                          0,
                          0,
                        ),
                        height: 8,
                        width: 14,
                        decoration: BoxDecoration(
                            color: currentIndex == 1
                                ? Color.fromARGB(255, 172, 21, 11)
                                : Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                    ])),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  0,
                  60,
                  0,
                  0,
                ),
                height: 8,
                width: 14,
                decoration: BoxDecoration(
                    color: currentIndex == 2
                        ? Color.fromARGB(255, 172, 21, 11)
                        : Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
              ),
              //resume button
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        currentIndex == 3 || currentIndex == 6
                            ? 'assets/icons/resume_red.png'
                            : 'assets/icons/resume.png',
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: Text(
                          'RESUME',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'MontSerratAlternates',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0,
                          10,
                          0,
                          0,
                        ),
                        height: 8,
                        width: 14,
                        decoration: BoxDecoration(
                            color: currentIndex == 3 || currentIndex == 6
                                ? Color.fromARGB(255, 172, 21, 11)
                                : Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                    ])),
              ),
              //profile button
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        currentIndex == 4 || currentIndex == 5
                            ? 'assets/icons/user_red.png'
                            : 'assets/icons/user.png',
                        height: 25,
                        width: 35,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 55,
                        child: Text(
                          'PROFILE',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'MontSerratAlternates',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0,
                          10,
                          0,
                          0,
                        ),
                        height: 8,
                        width: 14,
                        decoration: BoxDecoration(
                            color: currentIndex == 4 || currentIndex == 5
                                ? Color.fromARGB(255, 172, 21, 11)
                                : Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                    ])),
              ),
            ],
          ),
        ]),
        padding: EdgeInsets.all(0),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.only(top: 0),
        child: Visibility(
          visible: !showfab,
          child: FloatingActionButton(
            backgroundColor: currentIndex == 2 ? Colors.red : Colors.grey,
            elevation: 0,
            onPressed: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: Icon(
              Icons.add,
              size: 30,
              color: currentIndex == 2 ? Colors.white : Colors.black,
            ),
            splashColor: Colors.grey,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
