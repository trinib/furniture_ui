// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///+ 🔶 LIST WIDGET ///
      body: ListView(
        children: [
          ///! 🔶 🟩
          Column(
            children: <Widget>[
              ///! 🔶🟩 🟡
              Stack(
                children: <Widget>[
                  ///* TOP SQUARE CONTAINER
                  ///! 🔶🟩🟡 💙
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color.fromARGB(255, 0, 162, 100),
                  ),
                  ////* CIRCLES
                  //// first circle
                  Positioned(
                    bottom: 50,
                    right: 200.0,

                    ///! 🔶🟩🟡 💙
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color.fromARGB(59, 84, 209, 163),
                      ),
                    ),
                  ),
                  //// 2nd circle
                  Positioned(
                    bottom: 100,
                    left: 200.0,

                    ///! 🔶🟩🟡 💙
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      //// decoration
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color.fromARGB(59, 84, 209, 163),
                      ),
                    ),
                  ),

                  ///! 🔶🟩🟡 🟩
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      ////! 🔶🟩🟡 🟩🟥
                      Row(
                        children: <Widget>[
                          //// adjust size
                          SizedBox(width: 15.0),
                          ////* PIC IMAGE
                          ///! 🔶🟩🟡 🟩🟥💙
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50,
                            width: 50,
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
                                    image: AssetImage('assets/T.png'))),
                          ),
                          ////* MENU ICON
                          //// adjust size
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),

                          ///! 🔶🟩🟡 🟩🟥💙
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

                      ///! 🔶🟩🟡 🟩
                      ////* TITLES AT TOP
                      //// title 1
                      SizedBox(height: 50),
                      //// adjust space around
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
                      //// title 2
                      SizedBox(height: 15),
                      //// adjust space around
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

                      ///! 🔶🟩🟡 🟩
                      ///? A Mateial Widget 1
                      ///* SEARCHBOX
                      //// adjust size
                      SizedBox(height: 25),
                      //// adjust space around
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          elevation: 2, //// shadow
                          borderRadius: BorderRadius.circular(5),
                          ///// TextField
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
                                  color: Colors.white, fontFamily: 'Quicksand'),
                            ),
                          ),
                        ),
                      ),
                      //// create space inbetween
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),

              ///? A Mateial Widget 2
              ///* SECOND SQUARE BOX (white box container)
              //// adjust size
              SizedBox(height: 10),
              ////! 🔶🟡 🟡
              Stack(
                children: <Widget>[
                  //// create space inbetween
                  SizedBox(height: 1),
                  Material(
                    elevation: 1,
                    //// 🔶🟡 🟡💙 rectangle white box container
                    child: Container(
                      height: 75,
                      color: Colors.white,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///! 🔶🟡 🟡 🟥💙
                      //// background box
                      Container(
                        height: 75,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width / 4,

                        ///! 🔶🟡 🟡 🟥💙 🟩💙
                        ////* SOFAS
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/sofas.png'))),
                            ),
                            Text(
                              'Sofa',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),

                      ///! 🔶🟡 🟡 🟥💙
                      //// background box
                      Container(
                        height: 75,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width / 4,

                        ///! 🔶🟡 🟡 🟥💙 🟩💙
                        ////* DESKS
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/desks.png'))),
                            ),
                            Text(
                              'Desks',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),

                      ///! 🔶🟡 🟡 🟥💙
                      //// background box
                      Container(
                        height: 75,
                        color: Color.fromARGB(255, 0, 166, 100),
                        width: MediaQuery.of(context).size.width / 4,

                        ///! 🔶🟡 🟡 🟥💙 🟩💙
                        ////* WAREDROBE
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/wardrobe.png'))),
                            ),
                            Text(
                              'Waredrobe',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),

                      ///! 🔶🟡 🟡 🟥💙
                      //// background box
                      Container(
                        height: 75,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width / 4,

                        ///! 🔶🟡 🟡 🟥💙 🟩💙
                        ////* DRESSER
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/dressers.png'))),
                            ),
                            Text(
                              'Dressser',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              /// 🔶 🟩
              ///+ 'CALLING' THE 'ITEM CARD FUNCTION' WITH ITS PARAMETERS, TO DISPLAY
              //// each line created is passing values to the itemCard function's 'parameters' that will call and display the whole 'ITEM CARD WIDGET DESIGN' one by one
              itemCard('FinnNavian', 'assets/ottoman.jpg', false),
              itemCard('FinnNavian', 'assets/anotherchair.jpg', true),
              itemCard('FinnNavian', 'assets/chair.jpg', true)
            ],
          ),
        ],
      ),
    );
  }

  ///+ A CUSTOM FUNCTION TO CREATE 'ITEM CARD DESIGNS' TO BE 'CALLED' AND DISPLAYED (not visible if not called) ///
  ////? PASSING UNVALUED PARAMETERS TITLE/IMAGE/BOOL (a easy way to assign stuff to the build of the itemCard function)
  itemCard(String title, String imgPath, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      ////* WHITE BOX
      //// 💙
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        ////! 💙 🟥 (in whitebox)
        child: Row(
          children: <Widget>[
            ////* IMAGE
            //// 💙 🟥💙
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    //// imgPath (one of the unvalued parameter passed here)
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover),
              ),
            ),
            ///// space
            SizedBox(width: 40.0),

            //// 💙 🟥🟩
            Column(
              children: <Widget>[
                ////! 💙🟥 🟩🟥
                Row(
                  children: <Widget>[
                    ///* TITLE
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    ////space
                    SizedBox(width: 100.0),
                    ////* CIRCLE FRAME
                    Material(
                      //// shadow
                      //// isFavourite (one of the unvalued parameter passed here)
                      ///// if true (?) else false (:)
                      elevation: isFavorite ? 0.0 : 8.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        ////frame
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isFavorite
                                ? Colors.grey.withOpacity(0.2)
                                : Colors.white),
                        ////* HEART ICON
                        child: Center(
                          //// isFavourite (one of the unvalued parameter passed here)
                          ///// if true (?) else false (:)
                          child: isFavorite
                              ? Icon(Icons.favorite_border)
                              : Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),

                ///! 💙🟥 🟩
                SizedBox(height: 5.0),
                SizedBox(
                  width: 175.0,
                  child: Text(
                    'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 12.0),
                  ),
                ),
                ////space
                SizedBox(height: 15.0),

                ///! 💙🟥 🟩🟥
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                    ////* PRICE
                    ///! 💙🟥 🟩🟥 💙
                    Container(
                      height: 40.0,
                      width: 50.0,
                      color: Color.fromARGB(255, 0, 166, 100),
                      child: Center(
                        child: Text(
                          '\$248',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    ////* ADDTOCART
                    ///! 💙🟥 🟩🟥 💙
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: Color.fromARGB(255, 0, 227, 110),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
