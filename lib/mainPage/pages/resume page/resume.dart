import 'package:flutter/material.dart';
import '/mainPage/mainPage.dart';

class ResumePage extends StatefulWidget {
  @override
  State<ResumePage> createState() => _ResumeState();
}

class _ResumeState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: size.height * 0.17,
                width: size.width * 0.84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromRGBO(240, 204, 204, 1),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        color: Color.fromRGBO(240, 204, 204, 1))
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/upload.png',
                          height: 25,
                          width: 25,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 35,
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(244, 244, 244, 1),
                                  offset: Offset(3, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'UPLOAD',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Montserrar400',
                                  fontSize: 12,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(alignment: Alignment.centerLeft, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Container(
                          child: Image.asset(
                            'assets/images/image27.png',
                            width: size.width * 0.14,
                            height: size.height * 0.14,
                            color: Colors.black.withOpacity(0.7),
                            colorBlendMode: BlendMode.modulate,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          child: Image.asset(
                            'assets/images/image27.png',
                            width: size.width * 0.16,
                            height: size.height * 0.16,
                            color: Colors.black.withOpacity(0.4),
                            colorBlendMode: BlendMode.modulate,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Image.asset(
                            'assets/images/image27.png',
                            width: size.width * 0.22,
                            height: size.height * 0.22,
                          ),
                        ),
                      ),
                    ]),
                    Container(
                      height: size.height * 0.125,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(240, 238, 255, 1), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(240, 238, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 18,
                                ),
                                Text(
                                  'EDIT',
                                  style: TextStyle(
                                    fontSize: 8.5,
                                    fontFamily: 'Montserrat400',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.download,
                                  size: 18,
                                ),
                                Text(
                                  'DOWNLOAD',
                                  style: TextStyle(
                                    fontSize: 8.5,
                                    fontFamily: 'Montserrat400',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 30),
              child: Row(
                children: [
                  Text(
                    'RESUME ANALYSIS',
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
                    endIndent: 40,
                    color: Colors.grey,
                    height: 30,
                    thickness: 1.5,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: size.height * 0.3,
              width: size.width * 0.84,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(
                  color: Color.fromRGBO(240, 204, 204, 1),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    color: Color.fromRGBO(240, 204, 204, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ENTER JOB DESCRIPTION',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'MontserratAlternates',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: size.width / 1.2,
                        height: size.height / 8,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(223, 223, 223, 1),
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: TextFormField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.edit,
                              size: 15,
                            ),
                            hintMaxLines: 3,
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor:
                                    Color.fromRGBO(241, 241, 241, 1),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainPage()));
                                setState(() {
                                  MainPageState.currentIndex = 6;
                                });
                              },
                              child: Text(
                                'SUMBIT',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Montserrat400',
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: .8,
                                  color: Color.fromRGBO(0, 0, 0, 1),
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
}
