import 'package:flutter/material.dart';
import 'package:flutter_practice_1/mainPage/pages/profile%20page/newedituser.dart';

class userImage extends StatelessWidget {
  double radius;
  userImage(this.radius);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey,
        child: ClipOval(
            // child: edituserState.image != null
            //     ? Image.file(
            //         edituserState.image!,
            //         fit: BoxFit.fill,
            //       )
            // : null),
            ));
    // backgroundImage: edituserState.image != null
    //     ? FileImage(edituserState.image!)
    //     : null);
  }
}
// Image.file(_image!)