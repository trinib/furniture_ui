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

                        ///? A Mateial Widget
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
                        ///+ CALLING THE NUMBER OF DOTS ACCORDING TO THE LENGTH OF LIST
                        numberOfDots: photos.length,
                        //// to control images order in the list
                        photoIndex: photoIndex,
                      ),
                    ]),
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

////+ A CLASS FOR SELECTED PHOTO INDICATOR
class SelectedPhoto extends StatelessWidget {
  ///? Two parameters/property fields
  //// numberOfDots will be equal to the number of images in the photoIndex list
  final int numberOfDots;
  final int photoIndex;

  ///? a contsructor to call the parameters when the object is created/executed in main build
  SelectedPhoto({required this.numberOfDots, required this.photoIndex});

  ///? A funtion/method for INACTIVE PHOTO indicator
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

  ///? A funtion/method for ACTIVE PHOTO indicator
  Widget activePhoto() {
    return Padding(
      padding: EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: Colors.yellow,
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

  List<Widget> buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? activePhoto() : inactivePhoto());
    }

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
