import 'package:flutter/material.dart';
import './h.dart';
import 'package:flutter_practice_1/loginScreen.dart';
import 'package:rive/rive.dart';

class onboarding extends StatefulWidget {
  const onboarding({
    Key? key,
  }) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Korolev',
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: contencts.length,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 40, left: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 300,
                              width: 300,
                              child: RiveAnimation.asset(
                                contencts[i].image,
                                animations: [contencts[i].animation],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            contencts[i].title,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 23,
                              fontFamily: 'Korolev',
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            contencts[i].discription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 17,
                              height: 1.28,
                              fontFamily: 'Korolev',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.bounceIn);
                      },
                      child: Text(
                        (currentIndex == (contencts.length - 1)) ||
                                ((currentIndex == (contencts.length - 2)))
                            ? 'BACK'
                            : '',
                        style: TextStyle(
                          color: Color.fromRGBO(172, 168, 168, 1),
                          fontFamily: 'Korolev',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                  TextButton(
                    onPressed: () {
                      if (currentIndex == contencts.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LoginScreen(),
                          ),
                        );
                      }
                      _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceIn);
                    },
                    child: Text(
                      currentIndex == contencts.length - 1 ? 'NEXT' : 'NEXT',
                      style: TextStyle(
                        color: Color.fromRGBO(172, 168, 168, 1),
                        fontFamily: 'Korolev',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contencts.length,
                  (index) => buildDot(index, context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6, bottom: 13, left: 2),
      height: 10,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Color.fromRGBO(247, 161, 161, 1)
            : Color.fromRGBO(214, 213, 213, 1),
      ),
    );
  }
}
