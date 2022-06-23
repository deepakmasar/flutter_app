import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child:RiveAnimation.asset('image/new_file.riv',animations: ['Hand up '],),
          ),
        ),
      ),
    );
  }
}
