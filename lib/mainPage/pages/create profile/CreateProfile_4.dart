import 'package:flutter/material.dart';
import '../create profile/addReward.dart';
import '../create profile/portfolio.dart';

class CreateProfile4 extends StatefulWidget {
  @override
  CreateProfile4State createState() => CreateProfile4State();
}

class CreateProfile4State extends State<CreateProfile4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 233, 233),
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
                      width: size.width * 0.80,
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
            Container(
              margin: EdgeInsets.only(top: 10),
              width: size.width * 0.9,
              child: Row(
                children: [
                  Text(
                    'ACTIVITY DETAILS',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'MontSerratAlternates',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3.0,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    endIndent: 0,
                    color: Colors.grey,
                    height: 30,
                    thickness: 1.5,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: size.height * 0.7,
              width: size.width * 0.9,
              padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(110, 229, 82, 82),
                        blurRadius: 5,
                        offset: Offset(0, 0))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'SERVICES',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'MontSerratAlternates',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3.0,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        indent: 10,
                        endIndent: 0,
                        color: Colors.grey,
                        height: 30,
                        thickness: 1.5,
                      )),
                    ],
                  ),
                  //skills
                  Container(
                    height: size.height * 0.07,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 10, height: 0.5),
                        autofocus: false,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(Icons.add),
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 40.0,
                              )),
                          labelText: 'SERVICES',
                          labelStyle: TextStyle(
                              fontSize: 10,
                              letterSpacing: 3.0,
                              fontFamily: 'MontserratAlternates'),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'PROJECTS',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'MontSerratAlternates',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3.0,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10,
                          endIndent: 0,
                          color: Colors.grey,
                          height: 30,
                          thickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.4,
                    child: Column(children: [
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 235, 235),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.circle_rounded,
                                    size: 10.0,
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Text(
                                    'ANDROID PROJECT',
                                    style: TextStyle(
                                        fontSize: 10,
                                        letterSpacing: 2.0,
                                        fontFamily: 'MontserratAlternates'),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Text(
                                    '2021',
                                    style: TextStyle(
                                        fontSize: 8,
                                        letterSpacing: 3.0,
                                        fontFamily: 'MontserratAlternates'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'It was my great work for my physic project.',
                                  style: TextStyle(
                                      fontSize: 5,
                                      letterSpacing: 1.0,
                                      fontFamily: 'MontserratAlternates'),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        height: size.height / 20,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 235, 235),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.circle_rounded,
                                    size: size.width / 70,
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Text(
                                    'ANDROID PROJECT',
                                    style: TextStyle(
                                        fontSize: size.width / 35,
                                        letterSpacing: 2.0,
                                        fontFamily: 'MontserratAlternates'),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Text(
                                    '2021',
                                    style: TextStyle(
                                        fontSize: size.width / 50,
                                        letterSpacing: 3.0,
                                        fontFamily: 'MontserratAlternates'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'It was my great work for my physic project.',
                                  style: TextStyle(
                                      fontSize: size.width / 80,
                                      letterSpacing: 1.0,
                                      fontFamily: 'MontserratAlternates'),
                                ),
                              )
                            ]),
                      ),
                    ]),
                  ),
                  //award name textfield

                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide(
                            color: Color.fromARGB(255, 236, 235, 235),
                          )),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 236, 235, 235)),
                        ),
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.transparent),
                          width: 120,
                          child: Text(
                            'ADD PROJECT',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                letterSpacing: 3.0,
                                fontFamily: 'MontserratAlternates'),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        )));
  }
}
