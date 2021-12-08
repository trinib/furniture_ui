// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StatScreen extends StatefulWidget {
  @override
  _StatScreenState createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.amber.shade400,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.blue, style: BorderStyle.solid),
                      image: const DecorationImage(
                        scale: 4.1,
                        image: AssetImage('assets/chris.jpg'),
                      ),
                    ),
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text('hi'),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 10),
                        child: Text('hi'),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
