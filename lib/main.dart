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
      /// TOP WIDGET
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    //// takes full lenght
                    width: double.infinity,
                    color: Colors.amber.shade400,
                  ),
                  //// posti
                  Positioned(
                    bottom: 50,
                    right: 200.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 200.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffFFEDA9).withOpacity(0.2)),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        //// space around widget
                        margin: const EdgeInsets.all(11.0),
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage('assets/chris.jpg'),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
