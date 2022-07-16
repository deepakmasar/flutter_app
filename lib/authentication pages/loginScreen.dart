// ignore_for_file: avoid_print
import 'dart:async';
import 'package:flutter/services.dart';
import 'signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_1/mainPage/pages/home%20page/HomePage.dart';
// ignore: import_of_legacy_library_into_null_safe, unused_import
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:rive/rive.dart';
import 'package:flutter_practice_1/mainPage/mainPage.dart';

// ignore: depend_on_referenced_packages

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  Alignment riveAlign = Alignment.topRight;
  String password = 'nupins123';
  String _fileName = 'assets/rive_character/new_file.riv';
  String animationType = 'WaveHand';
  late RiveAnimationController _riveAnimationController;
  late Artboard _artboard;
  bool _isPlaying = false;
  bool showPassword = true;
  String errorMessage = '';

  void _activeRiveAnimation(RiveAnimationController _controller) {
    if (_controller.isActive == false) {
      _controller.isActive = true;
    }
  }

  // Widget rive_animation(String fn, String at, Alignment riveAlign) {
  //   return RiveAnimation.asset(
  //     fn,
  //     fit: BoxFit.contain,
  //     alignment: riveAlign,
  //     animations: [at],
  //     controllers: [_riveAnimationController],
  //   );
  // }

  @override
  void initState() {
//     rootBundle.load(_fileName).then(
// (data) async {
//     // final riveFile = RiveFile().import(data);
//     if (RiveFile().import(data)) {
//         final riveArtBoard = riveFile.mainArtboard;
//         riveArtBoard.addController(_riveAnimationController = SimpleAnimation(animationType));
//         setState(() => _artboard = riveArtBoard);
//     }
// },
// );
    _riveAnimationController = OneShotAnimation(
      animationType,
      onStop: () {
        setState(() {
          _fileName = 'assets/rive_character/new_file_2.riv';
        });
      },
    );
    emailFocusNode.addListener(() {
      if (emailFocusNode.hasFocus) {
        setState(() {
          riveAlign = Alignment.topRight;
          _fileName = 'assets/rive_character/new_file_2.riv';
          animationType = 'Blink';
        });
      } else {
        setState(() {
          riveAlign = Alignment.topRight;
          _fileName = 'assets/rive_character/new_file_2.riv';
          animationType = 'idle';
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _riveAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        backgroundColor: Colors.white,
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
                      //login text
                      Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
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
                        padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                        child: Container(
                          height: 130,
                          width: 400,
                          child: RiveAnimation.asset(
                            _fileName,
                            fit: BoxFit.contain,
                            alignment: riveAlign,
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
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            validator: (input) => !input!.contains('@')
                                ? 'email ID is not valid'
                                : null,
                            focusNode: emailFocusNode,
                            autofocus: false,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
                              ),
                            ),
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
                          child: GestureDetector(
                            onTapDown: (_) =>
                                _activeRiveAnimation(_riveAnimationController),
                            child: TextField(
                              obscureText: showPassword,
                              controller: passwordController,
                              focusNode: passwordFocusNode,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        showPassword = !showPassword;
                                      },
                                    );
                                  },
                                  icon: Icon(
                                    showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: passwordFocusNode.hasFocus
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'PASSWORD',
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
                                  color: passwordFocusNode.hasFocus
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
                        //login button
                        Container(
                            width: 400,
                            height: 60,
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(250, 249, 210, 210),
                              ),
                              onPressed: () {
                                if (passwordController.text
                                        .compareTo(password) ==
                                    0) {
                                  setState(() {
                                    animationType = 'Yess';
                                    errorMessage = "";
                                  });
                                  Timer(
                                      Duration(seconds: 1),
                                      () => Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  MainPage())));
                                } else if (passwordController.text.isEmpty) {
                                  setState(() {
                                    errorMessage =
                                        'please fill the credentials.';
                                  });
                                } else {
                                  setState(() {
                                    animationType = 'Blink';
                                    errorMessage =
                                        "you've entered wrong password or email.";
                                  });
                                }
                                (_) => _activeRiveAnimation(
                                    _riveAnimationController);
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
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //divider
                  Container(
                    margin: EdgeInsets.only(top: 20),
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
                  //google /linkedin login
                  Container(
                    height: 130,
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
                                child: Image.asset(
                                  'assets/images/image_5.png',
                                  height: 50,
                                  width: 50,
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
