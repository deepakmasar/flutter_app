import 'package:flutter/material.dart';

class CreateProfile3 extends StatefulWidget {
  @override
  CreateProfile3State createState() => CreateProfile3State();
}

class CreateProfile3State extends State<CreateProfile3> {
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
                      width: 240,
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
              width: 300,
              child: Row(
                children: [
                  Text(
                    'CARRIER DETAILS',
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
              height: 480,
              width: 359,
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
                        'SKILLS',
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
                    height: 100,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 5,
                      ),
                      height: 40,
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
                          labelText: 'SKILLS',
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
                        'AWARDS',
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
                  Container(
                    height: 100,
                    child: Column(children: [
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 235, 235),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              size: 10.0,
                            ),
                            Text(
                              'NOBEL PRIZE',
                              style: TextStyle(
                                  fontSize: 10,
                                  letterSpacing: 2.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                            Text(
                              '2021',
                              style: TextStyle(
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                            Text(
                              'It was my great work for my physic project.',
                              style: TextStyle(
                                  fontSize: 5,
                                  letterSpacing: 1.0,
                                  fontFamily: 'MontserratAlternates'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                      ),
                    ]),
                  ),
                  //award name textfield
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 40,
                    child: TextField(
                      style: TextStyle(fontSize: 10, height: 0.5),
                      autofocus: false,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Icon(Icons.edit),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 40.0,
                            )),
                        labelText: 'NAME OF AWARD',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  //year textfield
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 40,
                    child: TextField(
                      style: TextStyle(fontSize: 10, height: 0.5),
                      autofocus: false,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Icon(Icons.edit),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 40.0,
                            )),
                        labelText: 'YEAR',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  //description
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 5,
                    ),
                    height: 40,
                    child: TextField(
                      style: TextStyle(fontSize: 10, height: 0.5),
                      autofocus: false,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Icon(Icons.edit),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 40.0,
                            )),
                        labelText: 'DESC',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),

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
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.transparent),
                          width: 120,
                          child: Text(
                            'ADD REWARD',
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
