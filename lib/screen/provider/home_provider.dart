import 'package:flutter/cupertino.dart';

import '../view/fourth_screen.dart';
import '../view/home_screen.dart';


class Homeprovider extends ChangeNotifier
{

  List imgPath = [
    "assets/images/urus.1.jpg",
    "assets/images/urus.2.jpg",
    "assets/images/urus.3.jpg",
    "assets/images/urus.4.jpg",
    "assets/images/urus.5.jpg",
    "assets/images/urus.6.jpg",
    "assets/images/urus.7.jpg",
    "assets/images/urus.8.jpg",
    "assets/images/urus.9.jpg",
  ];

  List? screenList = [
    Homescreen(),
    fourthscreen(),
    Homescreen(),
  ];

  Duration time = Duration();

  void timePick()
  {

  }





}