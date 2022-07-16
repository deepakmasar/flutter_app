import 'package:flutter/material.dart';

class CreateProfile2 extends StatefulWidget {
  @override
  CreateProfile2State createState() => CreateProfile2State();
}

class CreateProfile2State extends State<CreateProfile2> {
  bool showDot = true;
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
                      width: 180,
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
                    'EXPERIENCE DETAILS',
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
              height: 110,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 370,
              width: 359,
              padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15),
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Visibility(
                            visible: showDot,
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  showDot = false;
                                });
                              },
                              child: Icon(Icons.check),
                              padding: EdgeInsets.only(bottom: 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          'Currently work here.',
                          style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'MontserratAlternates'),
                        ),
                      )
                    ],
                  ),
                  //tick column

                  //company name textfield
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
                        labelText: 'COMPANY NAME',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  //designation textfield
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
                        labelText: 'DESIGNATION',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  //employment status TEXTFIELD
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
                        labelText: 'EMPLOYMENT STATUS',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      //FROM
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 5),
                          height: 40,
                          child: TextField(
                            style: TextStyle(fontSize: 10, height: 0.5),
                            autofocus: false,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: Icon(Icons.calendar_month),
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 40.0,
                                  )),
                              labelText: 'FROM',
                              labelStyle: TextStyle(
                                  fontSize: 10,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          ),
                        ),
                      ),
                      //to textfield
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, left: 5),
                          height: 40,
                          child: TextField(
                            style: TextStyle(fontSize: 10, height: 0.5),
                            autofocus: false,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: Icon(Icons.calendar_month),
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 40.0,
                                  )),
                              labelText: 'TO',
                              labelStyle: TextStyle(
                                  fontSize: 10,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //job description
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
                        labelText: 'JOB DESCRIPTION',
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
                            color: Colors.grey,
                          )),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                        ),
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.transparent),
                          width: 120,
                          child: Text(
                            'ADD EXPERIENCE',
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
