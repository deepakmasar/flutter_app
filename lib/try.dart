import 'package:flutter/material.dart';
import 'package:flutter_complete_guid/nupins/nik.dart';
import 'package:flutter_complete_guid/nupins/splashscreen.dart';
import 'nupins/loginScreen.dart';
import 'nupins/hii.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NIK(),
      ),
    );
  }
}
