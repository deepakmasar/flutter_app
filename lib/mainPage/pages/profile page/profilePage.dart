import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '/mainPage/pages/profile%20page/newedituser.dart';
import '../../mainPage.dart';

class profilePage extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 233, 233),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopOfProfilepage(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 330),
              child: IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                  setState(() {
                    MainPageState.currentIndex = 5;
                  });
                },
                icon: Image.asset(
                  'assets/images/pencil.png',
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
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(110, 229, 82, 82),
                      offset: Offset(5, 5),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 0,
                    color: Colors.transparent,
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
                              fontWeight: FontWeight.w600,
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
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              letterSpacing: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/facebook.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/insta.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/twitter.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/linkedin.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/github.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/image.png',
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
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat600',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industrys standard dummy text ever since....',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              // fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 10, right: 10),
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
                                  fontFamily: 'Montserrat600',
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
                                    fontWeight: FontWeight.w400,
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
                                  fontFamily: 'Montserrat600',
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
                                    fontWeight: FontWeight.w400,
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
                                  fontFamily: 'Montserrat600',
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
                                    fontWeight: FontWeight.w400,
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
                            '141-suvida Row House Simada Gam,Surat,Gujrat,380018',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat600',
                              fontWeight: FontWeight.w400,
                            ),
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
                            'Skills',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat600',
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'FIGMA,  ADOBE XD,  ADOBE PHOTOSHOP',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat400',
                              fontWeight: FontWeight.w400,
                            ),
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
                            'Carrier',
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
                          Row(
                            children: [
                              Container(
                                height: 72,
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
                                          'assets/images/image26.png'),
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
                                      padding: const EdgeInsets.only(
                                          top: 2, left: 40),
                                      child: Image.asset(
                                        'assets/images/arrow.png',
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
                                      child:
                                          Image.asset('assets/images/idea.png'),
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
                                      padding: const EdgeInsets.only(
                                          top: 2, left: 40),
                                      child: Image.asset(
                                        'assets/images/arrow.png',
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
                                  color: Color.fromRGBO(223, 255, 207, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, right: 50, left: 5),
                                      child: Image.asset(
                                          'assets/images/trophy.png'),
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
                                      padding: const EdgeInsets.only(
                                          top: 2, left: 40),
                                      child: Image.asset(
                                        'assets/images/arrow.png',
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
          top: 100,
          child: buildimage(),
        ),
      ],
    );
  }
}

Widget buildimage() => Container(
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
    );
