import './loginScreen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: size.height / 5.2,
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Padding(padding: EdgeInsets.fromLTRB(95, 200, 0, 0)),
                    Text(
                      'NUP',
                      style: TextStyle(
                        fontSize: 50,
                        // fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'INS',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 66, 60, 60),
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: const Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                    letterSpacing: 4.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-MAIL',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      letterSpacing: 3.0,
                      fontFamily: 'Montserrat',
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          letterSpacing: 3.0,
                          fontFamily: 'Montserrat'),
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  controller: repasswordController,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                      labelText: 'RE-ENTER PASSWORD',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        letterSpacing: 3.0,
                        fontFamily: 'Montserrat',
                      ),
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Container(
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(250, 249, 210, 210),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
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
                child: Row(children: [
                  Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
                  FlatButton(
                    height: 50,
                    minWidth: 50,
                    onPressed: () {},
                    child: Container(
                      child: Image.asset(
                        'image/loginscreen/image 5.png',
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
                  Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                  FlatButton(
                    height: 50,
                    minWidth: 50,
                    onPressed: () {},
                    child: Container(
                      child: Image.asset(
                        'image/loginscreen/image 6.png',
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
                          fontFamily: 'Montserrat'),
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
}
