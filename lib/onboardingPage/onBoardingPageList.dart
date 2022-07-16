import 'package:flutter/material.dart';

class unboardingcontent {
  String image;
  String title;
  String discription;
  String animation;

  unboardingcontent(this.image, this.title, this.discription, this.animation);
}

List<unboardingcontent> contencts = [
  unboardingcontent(
      'assets/rive_character/new_file.riv',
      'Track and manage portfolio',
      'Your work at a glance.Manage all your experience at single place.Keep your\nwork upto date.',
      'WaveHand'),
  unboardingcontent(
      'assets/rive_character/new_file.riv',
      'Know your performence',
      'Have access to your work history.Look up dividend growth rate and your past exeperience.',
      'Success'),
  unboardingcontent(
      'assets/rive_character/new_file.riv',
      'All on your fingertip',
      'Share and manage all your experience on single online platform.',
      'Yess'),
];
