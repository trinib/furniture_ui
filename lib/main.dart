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
<<<<<<< HEAD
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
                        margin: const EdgeInsets.all(10.0),
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
=======
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
>>>>>>> 45965edf27a18a50920b93792f8fe7a6bcef8366
      ),
    );
  }
}
