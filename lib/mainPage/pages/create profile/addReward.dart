import 'package:flutter/material.dart';
import 'package:flutter_practice_1/mainPage/pages/create%20profile/CreateProfile_4.dart';

showAlertDialog(BuildContext context) {
  // set up the button
  Widget addRewardButton = TextButton(
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
          'ADD REWARD',
          style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              letterSpacing: 3.0,
              fontFamily: 'MontserratAlternates'),
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
                labelText: 'PROJECT TITLE',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //company name
          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 40,
            width: 400,
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
                labelText: 'COMPANY NAME',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //project url
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
                labelText: 'PROJECT URL',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //project skill
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
                labelText: 'PROJECT SKILLS',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //PROJECT CAYTEGORY
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
                labelText: 'PROJECT CATEGORY',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //FROM
          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 40,
            child: TextField(
              style: TextStyle(fontSize: 10, height: 0.5),
              autofocus: false,
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.calendar_month),
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 40.0,
                    )),
                labelText: 'FROM',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //TO
          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 40,
            child: TextField(
              style: TextStyle(fontSize: 10, height: 0.5),
              autofocus: false,
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.calendar_month),
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 40.0,
                    )),
                labelText: 'TO',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //PROJECT DESCRIPTION
          Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 5),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: TextField(
              textAlignVertical: TextAlignVertical.top,
              style: TextStyle(
                fontSize: 10,
              ),
              autofocus: false,
              decoration: InputDecoration(
                hintMaxLines: 5,
                isDense: true,
                suffixIcon: Icon(Icons.edit),
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                border: InputBorder.none,
                labelText: 'PROJECT DESCRIPTION',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
          //ADD LINK
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
                labelText: 'ADD LINK',
                labelStyle: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3.0,
                    fontFamily: 'MontserratAlternates'),
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      addRewardButton,
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
