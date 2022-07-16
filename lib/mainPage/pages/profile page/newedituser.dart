import 'package:flutter/material.dart';

import '/mainPage/mainPage.dart';
// import '../create profile/addReward.dart';
// import 'package:flutter_complete_guid/addskills.dart';
// import '../create profile/addReward.dart';
import 'package:flutter_practice_1/mainPage/pages/profile%20page/addskills.dart';

class edituser extends StatefulWidget {
  edituser({Key? key}) : super(key: key);

  @override
  State<edituser> createState() => _edituserState();
}

class _edituserState extends State<edituser> {
  bool pressedcolor1 = false;
  bool pressedcolor2 = false;
  bool pressedcolor3 = false;
  bool pressedcolor4 = false;
  bool pressedcolor5 = false;
  bool pressedcolor6 = false;
  late DateTime selectdate;
  @override
  void datepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then(
      (value) {
        if (value == null) {
          return;
        } else {
          selectdate = value;
        }
      },
    );
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            topprofileview(),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: size.height / 1.78,
              width: size.width / 1.05,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(229, 82, 82, 0.4),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      height: size.height / 24.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(223, 223, 223, 1),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 8.4,
                          letterSpacing: 2,
                          fontFamily: 'Montserrat300',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.only(
                              bottom: 12, start: 5),
                          border: InputBorder.none,
                          hintText: 'SCARLETT JOHANSON',
                          suffixIcon: Icon(
                            Icons.edit,
                            size: 18.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      height: size.height / 24.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(223, 223, 223, 1),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 8.4,
                          letterSpacing: 2,
                          fontFamily: 'Montserrat300',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.only(
                              bottom: 12, start: 5),
                          border: InputBorder.none,
                          hintText: 'Ui/Ux Designer',
                          suffixIcon: Icon(
                            Icons.edit,
                            size: 18.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      height: size.height / 24.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(223, 223, 223, 1),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 8.4,
                          letterSpacing: 2,
                          fontFamily: 'Montserrat300',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.only(
                              bottom: 12, start: 5),
                          border: InputBorder.none,
                          hintText: 'Loream ipusmm is simply ........',
                          suffixIcon: Icon(
                            Icons.edit,
                            size: 18.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width / 3.6,
                            height: size.height / 24.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(223, 223, 223, 1),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 8.4,
                                letterSpacing: 2,
                                fontFamily: 'Montserrat300',
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsetsDirectional.only(
                                        bottom: 12, start: 5),
                                border: InputBorder.none,
                                hintText: 'Female',
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 18.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: size.width / 3.4,
                                height: size.height / 24.3,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      '20/02/0222',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 8.4,
                                        letterSpacing: 2,
                                        fontFamily: 'Montserrat400',
                                      ),
                                    ),
                                    Icon(
                                      Icons.calendar_today_rounded,
                                      size: 17,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: size.width / 5.5,
                            height: size.height / 24.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(223, 223, 223, 1),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 8.4,
                                letterSpacing: 2,
                                fontFamily: 'Montserrat300',
                              ),
                              decoration: InputDecoration(
                                hintText: '3',
                                contentPadding:
                                    const EdgeInsetsDirectional.only(
                                        bottom: 15, start: 5),
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 18.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      height: size.height / 24.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(223, 223, 223, 1),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 8.4,
                          letterSpacing: 2,
                          fontFamily: 'Montserrat300',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.only(
                              bottom: 12, start: 5),
                          border: InputBorder.none,
                          hintText: '141-suvidha Row house Simada',
                          suffixIcon: Icon(
                            Icons.edit,
                            size: 18.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 1.2,
                      height: size.height / 24.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(223, 223, 223, 1),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextFormField(
                        readOnly: false,
                        initialValue: 'Skills',
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 8.8,
                          letterSpacing: 2,
                          fontFamily: 'Montserrat700',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.only(
                              bottom: 12, start: 5),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.add),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.08,
                      width: size.width / 1.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(241, 241, 241, 1),
                        ),
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FIGMA',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Montserrat400',
                                fontSize: 9.5,
                              ),
                            ),
                            Text(
                              'ADOBE XD',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Montserrat400',
                                fontSize: 9.5,
                              ),
                            ),
                            Text(
                              'MS EXEL',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Montserrat400',
                                fontSize: 9.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: size.height / 24.3,
                      width: size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  pressedcolor1
                                      ? Colors.white
                                      : Color.fromRGBO(158, 255, 123, 1)),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor1 = !pressedcolor1;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'FACEBOOK',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedcolor2
                                    ? Colors.white
                                    : Color.fromRGBO(158, 255, 123, 1),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor2 = !pressedcolor2;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'INSTAGRAM',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  pressedcolor3
                                      ? Colors.white
                                      : Color.fromRGBO(158, 255, 123, 1)),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor3 = !pressedcolor3;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'TWITTER',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Container(
                      height: size.height / 24.3,
                      width: size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedcolor4
                                    ? Colors.white
                                    : Color.fromRGBO(158, 255, 123, 1),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor4 = !pressedcolor4;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'LINKEDIN',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  pressedcolor5
                                      ? Colors.white
                                      : Color.fromRGBO(158, 255, 123, 1)),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor5 = !pressedcolor5;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'GITHUB',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                pressedcolor6
                                    ? Colors.white
                                    : Color.fromRGBO(158, 255, 123, 1),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                pressedcolor6 = !pressedcolor6;
                              });
                            },
                            child: SizedBox(
                              width: size.width / 6,
                              height: size.height / 24.3,
                              child: const Center(
                                child: Text(
                                  'DRIBBLE',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 8.2,
                                    letterSpacing: 1.4,
                                    fontFamily: 'Montserrat300',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topprofileview() {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Color.fromARGB(109, 144, 137, 137),
                offset: Offset(0, 5),
              )
            ],
            color: Color.fromRGBO(255, 237, 237, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/call.png',
                ),
              ),
              Text(
                'personal details'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.mail_outline),
              ),
            ],
          ),
        ),
        Positioned(
          top: size.height / 8,
          child: Container(
            height: 100,
            width: 200,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/profile.png',
              height: 100,
              width: 100,
              scale: 0.4,
            ),
            decoration: BoxDecoration(
                // color: Colors.transparent,
                ),
            // backgroundColor: Colors.transparent,
          ),
        ),
        Positioned(
          right: size.width / 7,
          top: size.height / 6.5,
          child: Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              elevation: 5,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
                setState(() {
                  MainPageState.currentIndex = 4;
                });
              },
              child: Icon(
                Icons.bookmark_outline,
                size: 25,
                color: Colors.white,
              ),
              splashColor: Colors.blue,
              focusColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
