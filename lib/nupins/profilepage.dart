import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(NUPINS());
}

class NUPINS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.deepOrange,
      // ),
      home: profilepage(),
    );
  }
}

class profilepage extends StatelessWidget {
  const profilepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          TopOfProfilepage(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'image/profilepage/pencil.png',
                color: Color.fromRGBO(172, 168, 168, 1),
                height: 20,
                width: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 450,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 1,
                  // color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'SCARLETT JOHANSON',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          'UI/UX Designer',
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat400',
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social Link',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat',
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/facebook.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/insta.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/twitter.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/linkedin.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/github.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/profilepage/image.png',
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Describe Yourself',
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat600',
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industrys standard dummy text ever since....'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 1,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DOB',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '12-02-2002',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 1,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Experience Year',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '3 Year',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 1,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            '141-suvida Row House Simada Gam,Surat,Gujrat,380018'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('FIGMA,ADOBE XD, ADOBE PHOTOSHOP'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Carrier',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 203, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 50, left: 5),
                                    child: Image.asset(
                                        'image/profilepage/image26.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, bottom: 0, left: 10),
                                    child: Text(
                                      'EDUCATION',
                                      style: TextStyle(
                                        fontSize: 9,
                                        // fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 2, left: 40),
                                    child: Image.asset(
                                      'image/profilepage/arrow.png',
                                      width: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(205, 214, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 50, left: 5),
                                    child: Image.asset(
                                        'image/profilepage/idea.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, bottom: 0, left: 10),
                                    child: Text(
                                      'PROJECT',
                                      style: TextStyle(
                                        fontSize: 9,
                                        // fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 2, left: 40),
                                    child: Image.asset(
                                      'image/profilepage/arrow.png',
                                      width: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 70,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(223, 255, 207, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, right: 50, left: 5),
                                    child: Image.asset(
                                        'image/profilepage/trophy.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, bottom: 0, left: 10),
                                    child: Text(
                                      'ACHIVEMENT',
                                      style: TextStyle(
                                        fontSize: 9,
                                        // fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 2, left: 40),
                                    child: Image.asset(
                                      'image/profilepage/arrow.png',
                                      width: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}

class TopOfProfilepage extends StatelessWidget {
  const TopOfProfilepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 237, 237, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('image/profilepage/call.png'),
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
                icon: Icon(Icons.mail),
              ),
            ],
          ),
        ),
        Positioned(
          top: 97,
          child: buildimage(),
        ),
      ],
    );
  }
}

Widget buildimage() => CircleAvatar(
      radius: 60,
      child: Image.asset(
        'image/profilepage/profileimage.png',
      ),
      backgroundColor: Colors.transparent,
    );
