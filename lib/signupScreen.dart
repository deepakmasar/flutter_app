import 'package:flutter_practice_1/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController repasswordController = TextEditingController();
  FocusNode repassowrdFocusNode = FocusNode();
  bool showPassword1 = true;
  bool showPassword2 = true;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    height: 150,
                    padding: const EdgeInsets.all(0),
                    child: Row(children: const [
                      Padding(padding: EdgeInsets.fromLTRB(95, 200, 0, 0)),
                      Text(
                        'NUP',
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
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 66, 60, 60),
                          letterSpacing: 3.0,
                        ),
                      ),
                    ])),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'MontserratAlternates',
                        fontWeight: FontWeight.w100,
                        letterSpacing: 5.0,
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    focusNode: passwordFocusNode,
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
                        prefixIcon: const Icon(Icons.email)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontSize: 15,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                        prefixIcon: Icon(Icons.lock)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: showPassword2,
                    controller: repasswordController,
                    focusNode: repassowrdFocusNode,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword2 = !showPassword2;
                            });
                          },
                          icon: Icon(
                            showPassword2
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'RE-ENTER PASSWORD',
                        labelStyle: TextStyle(
                            fontSize: 15,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                        prefixIcon: Icon(Icons.lock)),
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
                Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(250, 249, 210, 210),
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
                Padding(padding: EdgeInsets.all(10)),
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
