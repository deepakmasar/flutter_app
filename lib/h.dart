import 'package:flutter/material.dart';

class unboardingcontent {
  String image;
  String title;
  String discription;

  unboardingcontent(this.image, this.title, this.discription);
}

List<unboardingcontent> contencts = [
  unboardingcontent(
    'assets/images/image 34.png',
    'Track and manage portfolio',
    'Your work at a glance.Manage all your experience at single place.Keep your\nwork upto date.',
  ),
  unboardingcontent(
    'assets/images/image 33.png',
    'Know your performence',
    'Have access to your work history.Look up dividend growth rate and your past exeperience.',
  ),
  unboardingcontent(
    'assets/images/download (2) 1.png',
    'All on your fingertip',
    'Share and manage all your experience on single online platform.',
  ),
];
