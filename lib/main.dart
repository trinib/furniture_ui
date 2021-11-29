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
      /// LIST WIDGET WITH EVERYTHING INSIDE
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  //// TOP SQUARE CONTAINER
                  Container(
                    height: 250,
                    //// takes full lenght
                    width: double.infinity,
                    color: Colors.amber.shade400,
                  ),
                  //// postition container
                  Positioned(
                    bottom: 50,
                    right: 200.0,
                    //// CIRCLE CONTAINER
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),
                  //// LEFT CIRCLE CONTAINER
                  Positioned(
                    bottom: 100,
                    left: 200.0,
                    //// RIGHT CIRCLE CONTAINER
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      //// decoration
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),
                  //// COLUMN
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          SizedBox(width: 15.0),
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
                                  color: Colors.pink,
                                  style: BorderStyle.solid,
                                  width: 2),
                              //// image
                              image: const DecorationImage(
                                image: AssetImage('assets/chris.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                        ],
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
