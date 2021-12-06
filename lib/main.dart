// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      ////+ Calling home_page.dart file
      home: HomePage(),
    );
  }
}
