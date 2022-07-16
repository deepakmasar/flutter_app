import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:sync_flutters_charts/charts.dart';
// import 'package:syncfusion_flutter_core/core.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 233, 233),
      // safearea
      body: SingleChildScrollView(
        child: Column(verticalDirection: VerticalDirection.down, children: [
          // appbarHomePage1(),
          AppBar(
            toolbarHeight: size.height * 0.16,
            backgroundColor: Color.fromARGB(255, 255, 235, 235),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leadingWidth: size.height * 0.08,
            //leading icons
            leading: Container(
              margin: EdgeInsets.only(left: size.height * 0.03),
              padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: Image.asset(
                'assets/icons/globe.png',
              ),
            ),
            centerTitle: false,
            //search bar as title
            title: Center(
              child: Container(
                height: size.height * 0.055,
                width: size.width * 0.5,
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
                height: size.height * .06,
                width: size.height * .06,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/profile.png',
                  height: size.height * 0.055,
                  width: size.height * 0.055,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),

          //first box
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              height: size.height * 0.2,
              width: size.width * 0.85,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(110, 229, 82, 82),
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //profile completed
                  Container(
                    width: size.width * 0.25,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              Text(
                                '80%',
                                style: TextStyle(fontSize: 10),
                              ),
                              Image.asset(
                                'assets/images/Ellipse_14.png',
                                height: size.height * 0.06,
                                width: size.height * 0.06,
                              ),
                            ]),
                            Container(
                              width: size.width * 0.4,
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'PROFILE COMPLETED',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'montserratalternates',
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    indent: 15,
                    endIndent: 15,
                    color: Colors.grey,
                  ),
                  //graph
                  Container(
                    width: size.width * 0.27,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Group52.png',
                                    height: size.height * 0.07,
                                    width: size.width * 0.3,
                                  ),
                                  Image.asset(
                                    'assets/images/Group54.png',
                                    width: size.width * 0.28,
                                  )
                                ]),
                            Container(
                              width: size.width * 0.25,
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'ACTIVITY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'montserratalternates',
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    indent: 15,
                    endIndent: 15,
                    color: Colors.grey,
                  ),
                  //skills
                  Container(
                    width: size.width * 0.25,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(alignment: Alignment.center, children: [
                            Image.asset(
                              'assets/images/Group57.png',
                              height: size.height * 0.08,
                              width: size.height * 0.25,
                            ),
                            Image.asset('assets/images/Group56.png')
                          ]),
                          Container(
                            width: size.width * 0.24,
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'SKILLS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'montserratalternates',
                              ),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
          //second box
          Align(
            alignment: Alignment.center,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: size.height * 0.44,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(110, 229, 82, 82),
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ]),
                child: Column(children: [
                  Row(
                    children: [
                      //introduction
                      Container(
                        height: size.height * 0.238,
                        width: size.width * 0.59,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Column(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'SCARLETT JHONSSONS',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'MontSerratAlternates',
                                letterSpacing: 3.5,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ui / ux designer , infonyx tech.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                height: 2,
                                // fontWeight: FontWeight.w600,
                                fontFamily: 'MontSerratAlternates',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "year : 2018 - present",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 10,
                                height: 2,
                                // fontWeight: FontWeight.w600,
                                fontFamily: 'MontSerratAlternates',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          Divider(
                            indent: 0,
                            endIndent: 10,
                            thickness: 1,
                          ),
                          //contact details
                          //mail
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                size: 15,
                              ),
                              Text(
                                " scarlettjohansson@gmail.com",
                                style: TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.0,
                                  fontFamily: 'MontSerratAlternates',
                                ),
                              )
                            ],
                          ),
                          //call
                          Row(
                            children: [
                              Icon(
                                Icons.call,
                                size: 15,
                              ),
                              Text(
                                " +91 9999999999",
                                style: TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.0,
                                  fontFamily: 'MontSerratAlternates',
                                ),
                              )
                            ],
                          ),
                          //website
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/globe.png',
                                height: 12,
                                width: 12,
                              ),
                              Text(
                                "  www.scarlettjohansson.com",
                                style: TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.0,
                                  fontFamily: 'MontSerratAlternates',
                                ),
                              )
                            ],
                          ),
                          //online profile link
                          Row(
                            children: [
                              Icon(
                                Icons.link_outlined,
                                size: 15,
                              ),
                              Text(
                                " https://portfolio.nupins.in/scarlett",
                                style: TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.0,
                                  fontFamily: 'MontSerratAlternates',
                                ),
                              )
                            ],
                          )
                        ]),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/download(1)_1.png',
                          height: size.height * 0.15,
                          width: size.width * 0.2,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 20, 0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        //portfolio
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Portfolio',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'MontSerratAlternates',
                                  letterSpacing: 4.0,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/arrow-down-sign-to-navigate.png',
                                height: size.height * 0.03,
                                width: size.height * 0.03,
                              ),
                            ]),
                        //portfolio images
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    Image.asset('assets/images/image_10.png'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    Image.asset('assets/images/image_11.png'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    Image.asset('assets/images/image_10.png'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    Image.asset('assets/images/image_11.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ])),
          ),
        ]),
      ),
      //bottom navbar
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class Task {
  late String task;
  late int taskValue;
  late Color colorValue;

  Task(this.task, this.taskValue, this.colorValue);
}
