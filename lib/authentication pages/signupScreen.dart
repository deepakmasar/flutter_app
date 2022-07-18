// ignore_for_file: avoid_print
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_practice_1/authentication%20pages/loginScreen.dart';
import 'package:flutter_practice_1/models/login%20models/login_response_model.dart';
import 'package:flutter_practice_1/models/register%20models/register_request_model.dart';
import 'package:flutter_practice_1/services/api_services.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import '../models/login models/login_request_model.dart';
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
import 'package:snippet_coder_utils/FormHelper.dart';
// import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:flutter_practice_1/authentication pages/progressHUD.dart';
import '../config.dart';

// ignore: depend_on_referenced_packages

class signupScreen extends StatefulWidget {
  @override
  State<signupScreen> createState() => _signupScreen();
}

class _signupScreen extends State<signupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  final passwordFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final rePasswordFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();

  // Alignment riveAlign = Alignment.topRight;
  String _fileName = 'assets/rive_character/new_file.riv';
  String animationType = 'WaveHand';

  bool showPassword1 = true;
  bool showPassword2 = true;
  bool isAPIcallProcess = false;

  String? emailError = null;
  String? passwordError = null;
  String? rePasswordError = null;

  late RegisterRequestModel registerModel;

  final globalFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    registerModel = RegisterRequestModel();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(inAsyncCall: isAPIcallProcess, child: signupUI(context));
  }

  Widget signupUI(BuildContext context) {
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
                        padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                        child: Container(
                          height: 130,
                          width: 400,
                          child: RiveAnimation.asset(
                            _fileName,
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomRight,
                            animations: [animationType],

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
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Form(
                        key: globalFormKey,
                        child: Column(
                          children: [
                            //user name
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              margin: EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                onSaved: (newValue) =>
                                    registerModel.fullName = newValue,
                                controller: userNameController,
                                focusNode: userNameFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.blue,
                                  )),
                                  hintText: 'FULL NAME',
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 3.0,
                                      fontFamily: 'MontserratAlternates'),
                                  prefixIcon: Icon(
                                    Icons.person_outlined,
                                    color: userNameFocusNode.hasFocus
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
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
                                enableSuggestions: true,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (newValue) =>
                                    registerModel.email = newValue,
                                controller: emailController,
                                validator: (input) {
                                  if (input!.contains('@') &&
                                      input.contains(".com")) {
                                    setState(() {
                                      emailError = null;
                                    });
                                  } else if (input.isEmpty) {
                                    setState(() {
                                      emailError = 'please enter a email.';
                                    });
                                  } else {
                                    setState(() {
                                      emailError =
                                          'please enter a valid email.';
                                    });
                                  }
                                },
                                focusNode: emailFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
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
                            //email error
                            if (emailError != null)
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  emailError!,
                                  style: TextStyle(
                                    color: Colors.red,
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
                              margin: EdgeInsets.only(
                                  top: emailError == null ? 10 : 0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: TextFormField(
                                obscureText: showPassword1,
                                controller: passwordController,
                                onSaved: (newValue) =>
                                    registerModel.newPassword = newValue,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      passwordError =
                                          "please enter a password.";
                                    });
                                  } else if (value.length < 5) {
                                    setState(() {
                                      passwordError =
                                          'password should contain atleast 5 character.';
                                    });
                                  } else {
                                    setState(() {
                                      passwordError = null;
                                    });
                                  }
                                },
                                focusNode: passwordFocusNode,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          showPassword1 = !showPassword1;
                                        },
                                      );
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
                            //password error
                            if (passwordError != null)
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  passwordError!,
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            //repassword textfield
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              margin: EdgeInsets.only(
                                  top: passwordError == null ? 10 : 0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: TextFormField(
                                obscureText: showPassword2,
                                controller: rePasswordController,
                                onSaved: (newValue) =>
                                    registerModel.confirmNewPassword = newValue,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      rePasswordError =
                                          "please enter a password.";
                                    });
                                  } else if (value.length < 5 &&
                                      value != passwordController.text) {
                                    setState(() {
                                      rePasswordError =
                                          'please confirm the password.';
                                    });
                                  } else {
                                    setState(() {
                                      rePasswordError = null;
                                    });
                                  }
                                },
                                focusNode: rePasswordFocusNode,
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
                                      color: rePasswordFocusNode.hasFocus
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
                                    color: rePasswordFocusNode.hasFocus
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            //REPASSWORD ERROR
                            if (rePasswordError != null)
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  rePasswordError!,
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            //login button
                            Container(
                                width: 400,
                                height: 60,
                                margin: EdgeInsets.only(
                                    top: rePasswordError == null ? 20 : 0,
                                    bottom: 10),
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(250, 249, 210, 210),
                                  ),
                                  onPressed: () {
                                    if (validateAndSave() == true) {
                                      setState(() {
                                        isAPIcallProcess = true;
                                      });
                                      APIService.register(registerModel)
                                          .then((response) {
                                        if (response.data != null) {
                                          FormHelper.showSimpleAlertDialog(
                                            context,
                                            Config.appName,
                                            "account created!!",
                                            "OK",
                                            () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          LoginScreen()));
                                            },
                                          );
                                          setState(() {
                                            isAPIcallProcess = false;
                                          });
                                        } else {
                                          FormHelper.showSimpleAlertDialog(
                                            context,
                                            Config.appName,
                                            "Invalid Username/Password !!",
                                            "OK",
                                            () {
                                              Navigator.of(context).pop();
                                            },
                                          );
                                          setState(() {
                                            isAPIcallProcess = false;
                                          });
                                        }
                                      });
                                    }
                                  },
                                  child: const Text(
                                    'REGISTER',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'MontserratAlternates',
                                      letterSpacing: 3.0,
                                      color: Color.fromARGB(255, 79, 79, 79),
                                    ),
                                  ),
                                )),
                          ],
                        )),
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
                    height: 80,
                    width: 400,
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                            //linkedin button
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
                        'Already have an account.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 101, 94, 94),
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        child: const Text(
                          'Login',
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
                                  builder: (context) => LoginScreen()));
                        },
                      )
                    ],
                  ),
                ],
              )),
        ));
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
