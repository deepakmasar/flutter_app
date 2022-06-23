import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'profilepage.dart';
import './signupScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Container(
                    
                    height: size.height / 5.2,
                    padding: EdgeInsets.all(0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            'NUP',
                            style: TextStyle(
                              fontSize: 50,
                              // fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Colors.red,
                              letterSpacing: 3.0,
                            ),
                          ),
                          Text(
                            'INS',
                            style: TextStyle(
                              fontSize: 50,
                              // fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 66, 60, 60),
                              letterSpacing: 3.0,
                            ),
                          ),
                        ])),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        letterSpacing: 5.0,
                      ),
                    )),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: TextField(
                        onChanged: (val) {
                          validateEmail(val);
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-MAIL',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            letterSpacing: 3.0,
                            fontFamily: 'Montserrat',
                          ),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, top: 1),
                      child: Text(
                        errorMessage,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: obscure,
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              obscure = !obscure;
                            },
                          );
                        },
                        icon: Icon(
                          obscure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          letterSpacing: 3.0,
                          fontFamily: 'Montserrat'),
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                  ),
                ),
                Container(
                  height: size.height / 10,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(250, 249, 210, 210),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profilepage(),));
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        letterSpacing: 3.0,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(4)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Color.fromRGBO(114, 114, 114, 1),
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                      height: size.height / 22,
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
                      height: size.height / 22,
                      thickness: 2,
                    )),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
                Container(
                  height: size.height / 8,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
                        FlatButton(
                          height: size.height / 17,
                          minWidth: 50,
                          onPressed: () {},
                          child: Container(
                            child: Image.asset(
                              'image/loginscreen/image 5.png',
                              height: size.height / 14,
                              width: size.width / 8,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                        FlatButton(
                          height: 50,
                          minWidth: 50,
                          onPressed: () {},
                          child: Container(
                            child: Image.asset(
                              'image/loginscreen/image 6.png',
                              height: size.height / 14,
                              width: size.width / 8,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Does not have account?',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 101, 94, 94),
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      child: Text(
                        'Signin',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontFamily: 'Montserrat'),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        errorMessage = 'Email can not be empty';
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        errorMessage = 'Invalid Email Address !';
      });
    } else {
      setState(() {
        errorMessage = '';
      });
    }
  }
}
