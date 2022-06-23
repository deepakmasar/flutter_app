import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(nikhil());
}

class nikhil extends StatelessWidget {
  const nikhil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          child: Text('nikhil is my name'),
        ),
      ),
    );
  }
}
