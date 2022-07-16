import 'package:flutter/material.dart';

class blogPage extends StatefulWidget {
  @override
  State<blogPage> createState() => _blogPageState();
}

class _blogPageState extends State<blogPage> {
  bool pressedColor1 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: Align(
        child: Column(
          children: [
            //appbar
            AppBar(
              toolbarHeight: 120,
              backgroundColor: Color.fromARGB(255, 255, 235, 235),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leadingWidth: 50,
              //leading icons
              leading: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: Image.asset(
                  'assets/icons/globe.png',
                ),
              ),
              centerTitle: false,
              //search bar as title
              title: Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(110, 229, 82, 82),
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                  ),
                  //search bar
                  child: TextField(
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(height: 1.0),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 30),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'MontSerratAlternates',
                        ),
                        focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10),
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent),
                        )),
                  ),
                ),
              ),
              //profilepic at actions
              actions: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 15, 0),
                  padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                  height: 45,
                  width: 45,
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/profile.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            //scroll options
            Container(
              padding: EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //for you button
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedColor1
                                    ? Color.fromARGB(255, 219, 218, 218)
                                    : Colors.white,
                              )),
                          onPressed: () {
                            setState(() {
                              pressedColor1 = !pressedColor1;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'FOR YOU',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //jobs button
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedColor1
                                    ? Color.fromARGB(255, 219, 218, 218)
                                    : Colors.white,
                              )),
                          onPressed: () {
                            setState(() {
                              pressedColor1 = !pressedColor1;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'JOBS',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //FOLOWWING BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedColor1
                                    ? Color.fromARGB(255, 219, 218, 218)
                                    : Colors.white,
                              )),
                          onPressed: () {
                            setState(() {
                              pressedColor1 = !pressedColor1;
                            });
                          },
                          child: SizedBox(
                            width: 75,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'FOLLOWING',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //MARKET BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedColor1
                                    ? Color.fromARGB(255, 219, 218, 218)
                                    : Colors.white,
                              )),
                          onPressed: () {
                            setState(() {
                              pressedColor1 = !pressedColor1;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'MARKET',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //PROFILES BUTTON
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedColor1
                                    ? Color.fromARGB(255, 219, 218, 218)
                                    : Colors.white,
                              )),
                          onPressed: () {
                            setState(() {
                              pressedColor1 = !pressedColor1;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: const Center(
                              child: Text(
                                'PROFILES',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 66, 66),
                                  fontSize: 11,
                                  letterSpacing: 1.4,
                                  fontFamily: 'Montserrat300',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(left: 10, top: 10),
                      //   child: ElevatedButton(
                      //     style: ButtonStyle(
                      //         shape: MaterialStateProperty.all<
                      //             RoundedRectangleBorder>(
                      //           RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(20),
                      //           ),
                      //         ),
                      //         backgroundColor: MaterialStateProperty.all<Color>(
                      //           pressedColor1
                      //               ? Color.fromARGB(255, 219, 218, 218)
                      //               : Colors.white,
                      //         )),
                      //     onPressed: () {
                      //       setState(() {
                      //         pressedColor1 = !pressedColor1;
                      //       });
                      //     },
                      //     child: SizedBox(
                      //       width: 70,
                      //       height: 30,
                      //       child: const Center(
                      //         child: Text(
                      //           'FACEBOOK',
                      //           style: TextStyle(
                      //             color: Color.fromARGB(255, 67, 66, 66),
                      //             fontSize: 11,
                      //             letterSpacing: 1.4,
                      //             fontFamily: 'Montserrat300',
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      button('for you').button_on(),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            Container(
              height: size.height * 0.58,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //photo and name
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ellipse28.png',
                                          height: 18,
                                          width: 40,
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          'PRACHI GANDHI',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontFamily:
                                                'MontSerrrratAlternates',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //description
                                  Container(
                                    padding: EdgeInsets.only(left: 10, top: 6),
                                    width: 270,
                                    child: Text(
                                      'HOW TO GET JOBS IN LESS THAN 5 DAYS',
                                      style: TextStyle(
                                        height: 1.1,
                                        fontFamily: 'MontSerratAlternates',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3.0,
                                      ),
                                    ),
                                  ),
                                  //date and time
                                  Container(
                                    padding: EdgeInsets.only(left: 7, top: 0),
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'JUN 16',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Color.fromARGB(
                                              255, 105, 104, 104),
                                          size: 6,
                                        ),
                                        Text(
                                          'AVG. 15 MIN READ',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //more and save
                                  Container(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 25,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/Rectangle1480.png'),
                            )
                          ]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //photo and name
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ellipse28.png',
                                          height: 18,
                                          width: 40,
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          'PRACHI GANDHI',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontFamily:
                                                'MontSerrrratAlternates',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //description
                                  Container(
                                    padding: EdgeInsets.only(left: 10, top: 6),
                                    width: 270,
                                    child: Text(
                                      'HOW TO GET JOBS IN LESS THAN 5 DAYS',
                                      style: TextStyle(
                                        height: 1.1,
                                        fontFamily: 'MontSerratAlternates',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3.0,
                                      ),
                                    ),
                                  ),
                                  //date and time
                                  Container(
                                    padding: EdgeInsets.only(left: 7, top: 0),
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'JUN 16',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Color.fromARGB(
                                              255, 105, 104, 104),
                                          size: 6,
                                        ),
                                        Text(
                                          'AVG. 15 MIN READ',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //more and save
                                  Container(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 25,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/Rectangle1480.png'),
                            )
                          ]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //photo and name
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ellipse28.png',
                                          height: 18,
                                          width: 40,
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          'PRACHI GANDHI',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontFamily:
                                                'MontSerrrratAlternates',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //description
                                  Container(
                                    padding: EdgeInsets.only(left: 10, top: 6),
                                    width: 270,
                                    child: Text(
                                      'HOW TO GET JOBS IN LESS THAN 5 DAYS',
                                      style: TextStyle(
                                        height: 1.1,
                                        fontFamily: 'MontSerratAlternates',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3.0,
                                      ),
                                    ),
                                  ),
                                  //date and time
                                  Container(
                                    padding: EdgeInsets.only(left: 7, top: 0),
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'JUN 16',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Color.fromARGB(
                                              255, 105, 104, 104),
                                          size: 6,
                                        ),
                                        Text(
                                          'AVG. 15 MIN READ',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //more and save
                                  Container(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 25,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/Rectangle1480.png'),
                            )
                          ]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //photo and name
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ellipse28.png',
                                          height: 18,
                                          width: 40,
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          'PRACHI GANDHI',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontFamily:
                                                'MontSerrrratAlternates',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //description
                                  Container(
                                    padding: EdgeInsets.only(left: 10, top: 6),
                                    width: 270,
                                    child: Text(
                                      'HOW TO GET JOBS IN LESS THAN 5 DAYS',
                                      style: TextStyle(
                                        height: 1.1,
                                        fontFamily: 'MontSerratAlternates',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3.0,
                                      ),
                                    ),
                                  ),
                                  //date and time
                                  Container(
                                    padding: EdgeInsets.only(left: 7, top: 0),
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'JUN 16',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Color.fromARGB(
                                              255, 105, 104, 104),
                                          size: 6,
                                        ),
                                        Text(
                                          'AVG. 15 MIN READ',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //more and save
                                  Container(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 25,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/Rectangle1480.png'),
                            )
                          ]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //photo and name
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ellipse28.png',
                                          height: 18,
                                          width: 40,
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          'PRACHI GANDHI',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontFamily:
                                                'MontSerrrratAlternates',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //description
                                  Container(
                                    padding: EdgeInsets.only(left: 10, top: 6),
                                    width: 270,
                                    child: Text(
                                      'HOW TO GET JOBS IN LESS THAN 5 DAYS',
                                      style: TextStyle(
                                        height: 1.1,
                                        fontFamily: 'MontSerratAlternates',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3.0,
                                      ),
                                    ),
                                  ),
                                  //date and time
                                  Container(
                                    padding: EdgeInsets.only(left: 7, top: 0),
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'JUN 16',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Color.fromARGB(
                                              255, 105, 104, 104),
                                          size: 6,
                                        ),
                                        Text(
                                          'AVG. 15 MIN READ',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //more and save
                                  Container(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 25,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              color: Color.fromARGB(
                                                  255, 105, 104, 104),
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/Rectangle1480.png'),
                            )
                          ]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class button {
  String text;
  bool pressedColor1 = true;

  button(
    this.text,
  );
  void doSomething(String buttonName) {
    if (pressedColor1 == true) {
      pressedColor1 == false;
    } else {
      pressedColor1 == true;
    }
  }

  Widget button_on() => Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                pressedColor1
                    ? Color.fromARGB(255, 219, 218, 218)
                    : Colors.white,
              )),
          onPressed: () {},
          child: SizedBox(
            width: 70,
            height: 30,
            child: Center(
              child: Text(
                this.text,
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 66, 66),
                  fontSize: 11,
                  letterSpacing: 1.4,
                  fontFamily: 'Montserrat300',
                ),
              ),
            ),
          ),
        ),
      );
}
