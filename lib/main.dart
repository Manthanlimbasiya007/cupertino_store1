
import 'package:cupertino_store/screen/provider/fourth_provider.dart';
import 'package:cupertino_store/screen/provider/home_provider.dart';
import 'package:cupertino_store/screen/view/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => FourthProvider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (p0) => thirdscreen(),
        },
      ),
    ),
  );
}