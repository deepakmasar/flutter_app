import 'package:flutter/material.dart';

import 'CreateProfile_1.dart';
import 'CreateProfile_2.dart';
import 'CreateProfile_3.dart';
import 'CreateProfile_4.dart';
import 'CreateProfile_5.dart';

import '/mainPage/mainPage.dart';


class PortfolioTheme extends StatefulWidget {
  PortfolioTheme({Key? key}) : super(key: key);

  @override
  State<PortfolioTheme> createState() => PortfolioThemeState();
}

class PortfolioThemeState extends State<PortfolioTheme> {
  int currentIndex = 0;
  final pages = [
    selectTheme(),
    CreateProfile1(),
    CreateProfile2(),
    CreateProfile3(),
    CreateProfile4(),
    CreateProfile5(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool showfab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 233, 233),
      body: pages[currentIndex],
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(bottom: 15),
        child: Visibility(
          visible: !showfab,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 7,
            onPressed: () {
              if (currentIndex < (pages.length - 1)) {
                setState(() {
                  currentIndex = currentIndex + 1;
                });
              } else {
                setState(() {
                  currentIndex = 0;
                });
              }
            },
            child: const Icon(
              Icons.navigate_next,
              size: 30,
            ),
            splashColor: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class selectTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromRGBO(255, 237, 237, 1),
              elevation: 1,
              toolbarHeight: size.height / 25,
              title: Container(
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      child: Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 130, 228, 133),
                          indent: 0,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color.fromRGBO(215, 215, 215, 1),
                        indent: 0,
                        thickness: 3,
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'SELECT THEME',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'MontSerratAlternates',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3.0,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromRGBO(215, 215, 215, 1),
                      indent: 10,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Container(
                height: size.height * 0.68,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_10(2).png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_10(2).png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_11(2).png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_11(2).png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_10(2).png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/image_10(2).png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
