import 'package:counter_mvp/screen/provider/home_provider.dart';
import 'package:counter_mvp/screen/view/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        child: MaterialApp(
    debugShowCheckedModeBanner: false,
          routes: {
        '/':(context) => HomeScreen(),
          },
  ),
      ));
}