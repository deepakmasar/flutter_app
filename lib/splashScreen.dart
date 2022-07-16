// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice_1/authentication%20pages/loginScreen.dart';
import 'package:flutter_practice_1/onboardingPage/OnBoarding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const onboarding())));
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: width / 1,
        height: height / 1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            Color.fromARGB(250, 249, 210, 210),
            Color.fromARGB(150, 229, 229, 229),
          ],
        )),
        child: Stack(alignment: Alignment.center, children: [
          Center(
              child: Image.asset(
            'assets/images/logo.png',
            height: height / 1,
            width: width / 1.2,
          )),
          Container(
            padding: EdgeInsets.only(top: height / 5),
            alignment: Alignment.center,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NUP',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 251, 19, 2),
                      letterSpacing: 3.0,
                    ),
                  ),
                  Text(
                    'INS',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 15, 14, 14),
                      letterSpacing: 3.0,
                    ),
                  ),
                ]),
          ),
        ]),
      )),
    );
  }
}
