import 'package:flutter/material.dart';

class CreateProfile1 extends StatefulWidget {
  @override
  CreateProfile1State createState() => CreateProfile1State();
}

class CreateProfile1State extends State<CreateProfile1> {
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
                      width: 120,
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
                    'PERSONAL DETAILS',
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
              height: 431,
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
                  //name textfield
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
                        labelText: 'NAME',
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
                  //DESCRIPTION TEXTFIELD
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
                        labelText: 'DESCRIPTION',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      //gender
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 5),
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
                              labelText: 'GENDER',
                              labelStyle: TextStyle(
                                  fontSize: 10,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          ),
                        ),
                      ),
                      //dob
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
                              labelText: 'DOB',
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
                  //ADDRESS
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
                        labelText: 'ADDRESS',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  //work experience
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
                        labelText: 'WORK EXPERIENCE',
                        labelStyle: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3.0,
                            fontFamily: 'MontserratAlternates'),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 60,
                            child: Text(
                              'FACEBBOK',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                else
                                  return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 70,
                            child: Text(
                              'INSTAGRAM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                else
                                  return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 70,
                            child: Text(
                              'TWITTER',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                else
                                  return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 60,
                            child: Text(
                              'LINKEDIN',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                else
                                  return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 70,
                            child: Text(
                              'GITHUB',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromARGB(255, 105, 241, 110);
                                else
                                  return Colors.transparent;
                              },
                            ),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.grey,
                            )),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            width: 70,
                            child: Text(
                              'DRIBBLE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  letterSpacing: 3.0,
                                  fontFamily: 'MontserratAlternates'),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
