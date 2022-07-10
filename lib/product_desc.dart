// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProdDesc extends StatefulWidget {
  @override
  _ProdDescState createState() => _ProdDescState();
}

class _ProdDescState extends State<ProdDesc> {
  //// A INDEX variable to control order of images (List photos)
  int photoIndex = 0;
  ////! An array list
  List photos = [
    'assets/ottoman.jpg',
    'assets/otto2.jpg',
    'assets/otto3.jpg',
    'assets/otto4.jpg'
  ];

  ///+ a function to check if is FIRST image (using short function)
  ///? Go left and stop at first image
  //// check if first image, if not first image(> 0) then go to previous image else stay on first image
  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  ///+ a function to check if is LAST image (using long function)
  ///? Go right and stop at last image
  //// check if last image, if not last image(< photos.length - 1) then go to next image else stay on last image
  void _nextImage() {
    setState(() {
      if (photoIndex < photos.length - 1) {
        photoIndex = photoIndex + 1;
      } else {
        photoIndex = photos.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///! 🔶
      body: ListView(
        shrinkWrap: true,
        children: [
          ///! 🔶🟩
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///! 🔶🟩 🟡
              Stack(
                children: [
                  ///! 🔶🟩 🟡💙
                  ////* BOX OF IMAGES
                  Container(
                    height: 370.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  //// GESTURE
                  GestureDetector(
                      ////! 🔶🟩 🟡💙
                      child: Container(
                        height: 275.0,
                        //// takes full width if screen
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                      ),
                      ////+ CALLING FUNCTION
                      onTap: _nextImage),
                  //// GESTURE
                  GestureDetector(
                      ////! 🔶🟩 🟡💙
                      child: Container(
                        height: 275.0,
                        //// takes first half of screen(/ 2)
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.transparent,
                      ),
                      ////+ CALLING FUNCTION
                      onTap: _previousImage),

                  ////* TOP ICONS
                  //// adjust space around
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    ////! 🔶🟩 🟡🟥
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ////* ICON
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),

                        ///? A Material Widget
                        Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(20),
                          ////! 🔶🟩 🟡🟥💙
                          ////* BUTTON BORDER DESIGN
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            ////* ICONS
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 320,
                    left: MediaQuery.of(context).size.width / 2 - 30.0,
                    child: Row(children: [
                      SelectedPhoto(
                        ///+ CALLING THE NUMBER OF DOTS FROM CONSTRUCTOR ACCORDING TO THE LENGTH OF LIST
                        //// amount of dots to be created will be equal to the amount of photos
                        amountOfDots: photos.length,
                        //// to control images order in the list
                        photoIndex: photoIndex,
                      ),
                    ]),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Alicide Number 232X',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Finn Navian-Sofa',
                  style: TextStyle(
                      fontFamily: 'Monsterrat',
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width / 3 +
                              MediaQuery.of(context).size.width / 2) -
                          20.0,
                      child: Text(
                        'Scandinavian small size double sofa / imported full leather /Dale Italia oil wax leather black',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                    ),
                    Text(
                      '\$ 248',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ////* COLOR PALLETS
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.brown),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 117, 108, 104),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 186, 183, 181),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'MATERIAL',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.time_to_leave,
                          color: Colors.grey, size: 30),
                    ),
                    Text(
                      "x60",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.timelapse_sharp,
                          color: Colors.grey, size: 30),
                    ),
                    Text(
                      "x30",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.timeline_rounded,
                          color: Colors.grey, size: 30),
                    ),
                    Text(
                      "x30",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),

      ///? BOTTOM NAVIGATION BAR
      bottomNavigationBar: Material(
        elevation: 7.0,
        color: Colors.white,
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Icon(
                    Icons.price_check_sharp,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 0, 166, 100),
                width: MediaQuery.of(context).size.width - 130,
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

////+ A CLASS TO BUILD/CREATE DOTTED INDICATORS
class SelectedPhoto extends StatelessWidget {
  ///? Two parameters/property fields
  //// amountOfDots variable to create in list
  final int amountOfDots;
  //// the INDEX variable(0) to control order of dots in list
  final int photoIndex;

  ///? a constructor needed for the parameters when the object is CALLED(created/executed) in main build
  SelectedPhoto({required this.amountOfDots, required this.photoIndex});

  ///? A function to show INACTIVE PHOTO indicator
  Widget inactivePhoto() {
    return Padding(
      padding: EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  ///? A function to show ACTIVE PHOTO indicator
  Widget activePhoto() {
    return Padding(
      padding: EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 43, 187, 105),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }

  ///+ A METHOD TO LOOP DOTS THROUGH LIST
  List<Widget> buildDots() {
    //// need a variable called dots equal to an empty list because the widget is a list
    List<Widget> dots = [];

    /// while i is less than the amount of dots in the list, ADD ONE
    for (int i = 0; i < amountOfDots; i++) {
      ///? a add dots function with if and else statement
      //// add dot if i(0) is equal to photoIndex(0)(current photo) call activePhoto else call inactivePhoto
      ////(0 = 0(first in list))
      dots.add(i == photoIndex ? activePhoto() : inactivePhoto());
    }
    //// need to return dots
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots(),
      ),
    );
  }
}
