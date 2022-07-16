import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the button
  Widget addskillButton = TextButton(
      style: ButtonStyle(
        side: MaterialStatePropertyAll(BorderSide(
          color: Color.fromARGB(255, 236, 235, 235),
        )),
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 236, 235, 235)),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.transparent),
        width: 120,
        child: Text(
          'ADD SKILL',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            letterSpacing: 3.0,
            fontFamily: 'MontserratAlternates',
          ),
        ),
      ));

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    content: SingleChildScrollView(
      child: Column(
        children: [
          //project title

          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 40,
            child: TextField(
              style: TextStyle(fontSize: 10, height: 0.5),
              autofocus: false,
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.edit),
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 40.0,
                    )),
                labelText: 'SKILL',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //project skill
        ],
      ),
    ),
    actions: [
      addskillButton,
    ],
    actionsAlignment: MainAxisAlignment.center,
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
