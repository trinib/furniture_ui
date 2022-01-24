import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProdDesc extends StatefulWidget {
  @override
  _ProdDescState createState() => _ProdDescState();
}

class _ProdDescState extends State<ProdDesc> {
  int photoIndex = 0;
  List photos = [
    'assets/ottoman.jpg',
    'assets/otto2.jpeg',
    'assets/otto3.jpg',
    'assets/otto4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
