import 'package:flutter/material.dart';
import 'package:flutter_practice_1/mainPage/mainPage.dart';
import 'package:flutter_practice_1/mainPage/pages/home%20page/HomePage.dart';
import 'package:flutter_practice_1/mainPage/pages/profile%20page/newedituser.dart';
import 'splash screen/splashScreen.dart';
// import 'package:syncfusion_flutter_core/core.dart';

void main() {
  // Register your license here
  // SyncfusionLicense.registerLicense(null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NUPINS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}
