import 'package:flutter/material.dart';

class jobsBlog extends StatefulWidget {
  const jobsBlog({super.key});

  @override
  State<jobsBlog> createState() => _jobsBlogState();
}

class _jobsBlogState extends State<jobsBlog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontFamily: 'MontSerrrratAlternates',
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'JUN 16',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontSize: 8,
                                    fontFamily: 'MontSerratAlternates',
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 105, 104, 104),
                                  size: 6,
                                ),
                                Text(
                                  'AVG. 15 MIN READ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                      child: Image.asset('assets/images/Rectangle1480.png'),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontFamily: 'MontSerrrratAlternates',
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'JUN 16',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontSize: 8,
                                    fontFamily: 'MontSerratAlternates',
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 105, 104, 104),
                                  size: 6,
                                ),
                                Text(
                                  'AVG. 15 MIN READ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                      child: Image.asset('assets/images/Rectangle1480.png'),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontFamily: 'MontSerrrratAlternates',
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'JUN 16',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontSize: 8,
                                    fontFamily: 'MontSerratAlternates',
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 105, 104, 104),
                                  size: 6,
                                ),
                                Text(
                                  'AVG. 15 MIN READ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                      child: Image.asset('assets/images/Rectangle1480.png'),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontFamily: 'MontSerrrratAlternates',
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'JUN 16',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontSize: 8,
                                    fontFamily: 'MontSerratAlternates',
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 105, 104, 104),
                                  size: 6,
                                ),
                                Text(
                                  'AVG. 15 MIN READ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                      child: Image.asset('assets/images/Rectangle1480.png'),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontFamily: 'MontSerrrratAlternates',
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'JUN 16',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
                                    fontSize: 8,
                                    fontFamily: 'MontSerratAlternates',
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 105, 104, 104),
                                  size: 6,
                                ),
                                Text(
                                  'AVG. 15 MIN READ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                                      color: Color.fromARGB(255, 105, 104, 104),
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
                      child: Image.asset('assets/images/Rectangle1480.png'),
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
    );
  }
}
