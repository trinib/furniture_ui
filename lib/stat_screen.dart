// ignore_for_file: prefer_const_constructors

import 'dart:ui';

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
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.amber.shade400,
              ),
              Row(
                children: <Widget>[
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
                  Row(
                    children: <Widget>[
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Brandon',
                              style: TextStyle(
                                  fontSize: 60, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 130, top: 90),
                        child: Text(
                          '1234',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
