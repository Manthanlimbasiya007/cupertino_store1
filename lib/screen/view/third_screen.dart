import 'package:cupertino_store/screen/view/fourth_screen.dart';
import 'package:cupertino_store/screen/view/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_screen.dart';
class thirdscreen extends StatefulWidget {
  const thirdscreen({Key? key}) : super(key: key);

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  List screen = [Homescreen(),secondscreen(),fourthscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        controller: CupertinoTabController(
          initialIndex: 0,
        ),
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return screen[index];
          },
        ),
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
          ],
        ),
      ),
    );
  }
}