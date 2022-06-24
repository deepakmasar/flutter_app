// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';
import 'package:flutter_practice_1/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_1/HomePage.dart';
// ignore: import_of_legacy_library_into_null_safe, unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:rive/rive.dart';
// ignore: depend_on_referenced_packages

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  String password = 'nupins123';
  late Alignment riveAlign;
  late String animationType;
  late RiveAnimationController _riveAnimationController;
  bool _isPlaying = false;

  @override
  void _activeRiveAnimation(RiveAnimationController _controller) {
    if (_controller.isActive == false) {
      _controller.isActive = true;
    }
  }

  void initState() {
    // emailFocusNode.addListener(() {
    //   if (emailFocusNode.hasFocus) {
    //     setState(() {
    //       animationType = 'Yess';
    //       riveAlign = Alignment.topLeft;
    //     });
    //   } else {
    //     setState(() {
    //       animationType = 'raise hands';
    //       riveAlign = Alignment.topRight;
    //     });
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              Center(
                  child: GestureDetector(
                onTapDown: (_) =>
                    _activeRiveAnimation(_riveAnimationController),
                child: Stack(children: [
                  //nupins logo
                  Container(
                      alignment: Alignment.topCenter,
                      height: height * 0.17,
                      padding: EdgeInsets.only(top: 50),
                      child: Row(children: const [
                        Padding(padding: EdgeInsets.only(left: 95)),
                        Text(
                          'NUP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.red,
                            letterSpacing: 3.0,
                          ),
                        ),
                        Text(
                          'INS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 66, 60, 60),
                            letterSpacing: 3.0,
                          ),
                        ),
                      ])),
                  //login text
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(0, 140, 0, 60),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'MontserratAlternates',
                          letterSpacing: 5.0,
                        ),
                      )),
                  //rive character
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
                    child: Container(
                      height: 130,
                      width: 400,
                      child: RiveAnimation.asset(
                        'assets/rive_character/new_file.riv',
                        fit: BoxFit.contain,
                        alignment: emailFocusNode.hasFocus
                            ? riveAlign = Alignment.topLeft
                            : riveAlign = Alignment.topRight,
                        animations: [
                          emailFocusNode.hasFocus
                              ? animationType = 'raise hand'
                              : animationType = 'idle',
                        ],
                        // controllers: [
                        //   _riveAnimationController,
                        // ],
                        //     FlareActor(
                        //   'assets/rive_character/Teddy_Login_Screen_example.flr',
                        //   alignment: Alignment.center,
                        //   fit: BoxFit.fitHeight,
                        //   animation: animationType,
                        // ),
                      ),
                    ),
                  ),
                ]),
              )),
              //email textfield
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  autofocus: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    labelText: 'E-MAIL',
                    labelStyle: TextStyle(
                        fontSize: 15,
                        letterSpacing: 3.0,
                        fontFamily: 'MontserratAlternates'),
                    prefixIcon: Icon(
                      Icons.email,
                      // color:
                      // emailFocusNode.hasFocus ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              ),
              //password textfield
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: GestureDetector(
                  onTapDown: (_) =>
                      _activeRiveAnimation(_riveAnimationController),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                        prefixIcon: Icon(Icons.lock)),
                  ),
                ),
              ),
              //login button
              Container(
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(250, 249, 210, 210),
                    ),
                    onPressed: () {
                      if (passwordController.text.compareTo(password) == 0) {
                        setState(() {
                          animationType = 'Yess';
                        });
                        Timer(
                            Duration(seconds: 1),
                            () => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomePage())));
                      } else {
                        setState(() {
                          animationType = 'Blink';
                        });
                      }
                      (_) => _activeRiveAnimation(_riveAnimationController);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'MontserratAlternates',
                        letterSpacing: 3.0,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                  )),
              Padding(padding: EdgeInsets.all(10)),
              //forgot password
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              //divider
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    height: 30,
                    thickness: 2,
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    height: 30,
                    thickness: 2,
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
              //google /linkedin login
              Container(
                height: 120,
                width: 400,
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
                        //google login button
                        FlatButton(
                          height: 50,
                          minWidth: 50,
                          onPressed: () {},
                          child: Container(
                            child: Image.asset(
                              'assets/images/image 5.png',
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(99, 171, 167, 167),
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset.zero,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        // Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                        FlatButton(
                          height: 50,
                          minWidth: 50,
                          onPressed: () {},
                          child: Container(
                            child: Image.asset(
                              'assets/images/image 6.png',
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(99, 171, 167, 167),
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset.zero,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Does not have account?',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 101, 94, 94),
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    child: const Text(
                      'Signin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MontserratAlternates'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                  )
                ],
              ),
            ],
          )),
    ));
  }
}
