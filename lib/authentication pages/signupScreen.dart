import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'package:flutter_practice_1/mainPage/pages/resume page/resumeAnalysis.dart';
import 'loginScreen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  TextEditingController repasswordController = TextEditingController();
  final repasswordFocusNode = FocusNode();
  bool showPassword1 = true;
  bool showPassword2 = true;
  String errorMessage = '';
  String _fileName = 'assets/rive_character/new_file.riv';
  String animationType = 'WaveHand';
  late RiveAnimationController _riveAnimationController;

  @override
  void initState() {
    _riveAnimationController = OneShotAnimation(
      animationType,
      onStop: () {
        setState(() {
          _fileName = 'assets/rive_character/new_file_2.riv';
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Center(
                    child: GestureDetector(
                  onTapDown: (_) {},
                  child: Stack(children: [
                    //nupins logo
                    Container(
                        alignment: Alignment.topCenter,
                        height: height * 0.17,
                        padding: EdgeInsets.only(top: 30),
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
                    //register text
                    Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.fromLTRB(0, 120, 10, 0),
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'MontserratAlternates',
                            letterSpacing: 5.0,
                          ),
                        )),
                    //rive character
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.fromLTRB(10, 70, 0, 0),
                      child: Container(
                        height: 130,
                        width: 400,
                        child: RiveAnimation.asset(
                          _fileName,
                          fit: BoxFit.contain,
                          alignment: Alignment.centerRight,
                          animations: [animationType],
                          controllers: [_riveAnimationController],
                          // controllers: [
                          //   _riveAnimationController,
                          // ],
                          // child: FlareActor(
                          //   'assets/rive_character/Teddy_Login_Screen_example.flr',
                          //   alignment: Alignment.center,
                          //   fit: BoxFit.fitHeight,
                          //   animation: animationType,
                          // ),
                        ),
                      ),
                    )
                  ]),
                )),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      //email textfield
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TextField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.blue,
                              )),
                              hintText: 'E-MAIL',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: emailFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.black,
                              )),
                        ),
                      ),
                      //password textfield
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TextField(
                          obscureText: showPassword1,
                          controller: passwordController,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.blue,
                              )),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showPassword1 = !showPassword1;
                                  });
                                },
                                icon: Icon(
                                  showPassword1
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: passwordFocusNode.hasFocus
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'PASSWORD',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                                color: passwordFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.black,
                              )),
                        ),
                      ),
                      //repassword textfield
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: GestureDetector(
                          onTapDown: null,
                          child: TextField(
                            obscureText: showPassword2,
                            controller: repasswordController,
                            focusNode: passwordFocusNode,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      showPassword2 = !showPassword2;
                                    },
                                  );
                                },
                                icon: Icon(
                                  showPassword2
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: repasswordFocusNode.hasFocus
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'RE-ENTER PASSWORD',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.blue,
                              )),
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                                color: repasswordFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerRight,
                        child: Text(
                          errorMessage,
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      //register button
                      Container(
                          width: 400,
                          height: 60,
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(250, 249, 210, 210),
                            ),
                            onPressed: () {
                              if (passwordController.text
                                      .compareTo(repasswordController.text) ==
                                  0) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              } else if (passwordController.text.isEmpty ||
                                  repasswordController.text.isEmpty ||
                                  emailController.text.isEmpty) {
                                setState(() {
                                  errorMessage = 'please fill the details.';
                                });
                              } else {
                                setState(() {
                                  errorMessage = 'please check the password.';
                                });
                              }
                            },
                            child: const Text(
                              'REGISTER',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'MontserratAlternates',
                                letterSpacing: 4.0,
                                color: Color.fromARGB(255, 79, 79, 79),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Row(
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
                ),
                Container(
                  height: 110,
                  width: 400,
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
                          //google login button
                          MaterialButton(
                            height: 50,
                            minWidth: 50,
                            onPressed: () {},
                            child: Container(
                              child: Image.asset(
                                'assets/images/image_5.png',
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
                          MaterialButton(
                            height: 50,
                            minWidth: 50,
                            onPressed: () {},
                            child: Container(
                              child: Image.asset(
                                'assets/images/image_6.png',
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
                  children: <Widget>[
                    const Text(
                      'Already have an account.',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 101, 94, 94),
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      child: const Text(
                        'Login',
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
                                builder: (context) => LoginScreen()));
                      },
                    )
                  ],
                ),
              ],
            )));
  }
}
