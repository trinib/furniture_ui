import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProdDesc extends StatefulWidget {
  @override
  _ProdDescState createState() => _ProdDescState();
}

class _ProdDescState extends State<ProdDesc> {
  //// A variable to control order of images (List photos)
  int photoIndex = 0;
  List photos = [
    'assets/ottoman.jpg',
    'assets/otto2.jpg',
    'assets/otto3.jpg',
    'assets/otto4.jpg'
  ];

  ///! check if is FIRST image (using short function)
  ///? Go left and stop at first image
  //// if not first image(> 0) then go to previous image else stay on first image
  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  ///! check if is LAST image  (using long function)
  ///? Go right and stop at last image
  /// if not last image(< photos.length - 1) then go to next image else stay on last image
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
              ///! 🔶🟩🟡
              Stack(
                children: [
                  ///! 🔶🟩🟡💙
                  Container(
                    height: 370.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  GestureDetector(
                      ////! 🔶🟩🟡💙
                      child: Container(
                        height: 275.0,
                        //// takes full width if screen
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                      ),
                      onTap: _nextImage),
                  GestureDetector(
                      ////! 🔶🟩🟡💙
                      child: Container(
                        height: 275.0,
                        //// takes first half of screen(/ 2)
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.transparent,
                      ),
                      onTap: _previousImage),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
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
