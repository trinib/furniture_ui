// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///! LIST WIDGET WITH EVERYTHING INSIDE
      body: ListView(
        children: [
          ///! FIRST COLUMN
          Column(
            children: [
              Stack(
                children: [
                  ///* TOP SQUARE CONTAINER
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.amber.shade400,
                  ),
                  //// postition container
                  Positioned(
                    bottom: 50,
                    right: 200.0,
                    ////* 1st circle
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),

                  ///* 2nd circle
                  Positioned(
                    bottom: 100,
                    left: 200.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      //// decoration
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),
                  ////! SECOND COLUMN
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0),
                      ////! ROW
                      Row(
                        children: [
                          SizedBox(width: 15.0),
                          //// picture
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50,
                            width: 50,
                            //// space around widget
                            decoration: BoxDecoration(
                              //// change container shape to round
                              borderRadius: BorderRadius.circular(100),
                              //// add border around circle
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2,
                              ),
                              //// image
                              image: const DecorationImage(
                                image: AssetImage('assets/chris.jpg'),
                              ),
                            ),
                          ),
                          ////* MENU ICON
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                      //// TITLE
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'trinib',
                          style: TextStyle(
                              fontFamily: 'QuickSand',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //// TITLE 2
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'testing app',
                          style: TextStyle(
                              fontFamily: 'QuickSand',
                              fontSize: 25,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      //// SEARCHBOX
                      //// adjust position
                      SizedBox(height: 25),
                      //// adjust size
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          //// shadow
                          elevation: 2,
                          borderRadius: BorderRadius.circular(5),
                          //// TextField
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                //// Icon
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                //// Hint text
                                //// adjust text
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 15),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'Quicksand')),
                          ),
                        ),
                      ),
                      //// create space inbetween
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
