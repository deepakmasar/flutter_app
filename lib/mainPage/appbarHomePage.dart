import 'package:flutter/material.dart';

class appbarHomePage extends StatefulWidget {
  @override
  appbarHomePageState createState() => appbarHomePageState();
}

class appbarHomePageState extends State<appbarHomePage> {
  @override
  Widget build(BuildContext context) {
    return appbarHomePage1();
  }
}

Widget appbarHomePage1() => AppBar(
      toolbarHeight: 110,
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
          width: 300,
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
          padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
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
    );
