import 'package:flutter/cupertino.dart';

class SecondProvider extends ChangeNotifier
{
  int i = 0;
  void changeIndex(int x)
  {
    i++;
  }
}