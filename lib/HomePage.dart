import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // static const IconData globe =
  // IconData(0xf68d, fontFamily: iconFont, fontPackage: iconFontPackage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 233, 233),
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color.fromARGB(255, 255, 235, 235),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leadingWidth: 80,
        leading: Container(
          padding: EdgeInsets.fromLTRB(35, 0, 15, 0),
          child: Image.asset(
            'assets/icons/globe.png',
          ),
        ),
        centerTitle: true,
        title: Center(
          child: Container(
            width: 200,
            child: TextField(
              style: TextStyle(height: 0.5),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
            padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
            height: 50,
            width: 50,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/profile.png',
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(19, 0, 19, 16)),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                height: 156,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                )),
            Padding(padding: EdgeInsets.fromLTRB(19, 0, 19, 0)),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Column(children: [
                  SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    'HOME',
                    // style: tex,
                  )
                ])),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
