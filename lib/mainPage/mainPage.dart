// ignore_for_file: deprecated_member_use

import 'dart:ffi';
import 'package:flutter_practice_1/loginScreen.dart';
import 'package:flutter_practice_1/mainPage/appbarHomePage.dart';
import 'package:flutter_practice_1/mainPage/profilePage.dart';
// import 'package:flutter_practice_1/sliderHomePage.dart';
import 'package:get/get.dart';
import 'package:floodfill_image/floodfill_image.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int currentIndex = 0;
  late PageController pageController;
  Widget _bodyName = HomePage();

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Center(
              child: pages[i].page1,
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.transparent),
        ),
        child: Stack(children: [
          Row(
            children: [
              //home button
              FlatButton(
                onPressed: () {
                  pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceIn);
                  currentIndex = 0;
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                    ])),
              ),
              //profile button
              FlatButton(
                onPressed: () {
                  pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceIn);
                  currentIndex = 1;
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(
                      130,
                      0,
                      0,
                      0,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        currentIndex == 1
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
                    ])),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                pages.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
        ]),
        padding: EdgeInsets.all(0),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(bottom: 3),
        child: FloatingActionButton(
          elevation: 7,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
          splashColor: Colors.grey,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        currentIndex == index ? 80 : 80,
        60,
        75,
        0,
      ),
      height: 8,
      width: 14,
      decoration: BoxDecoration(
          color: currentIndex == index
              ? Color.fromARGB(255, 189, 17, 5)
              : Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}

class HomePageOnboarding {
  late Widget page1;
  HomePageOnboarding(this.page1);
}

List<HomePageOnboarding> pages = [
  HomePageOnboarding(HomePage()),
  HomePageOnboarding(profilePage()),
];
