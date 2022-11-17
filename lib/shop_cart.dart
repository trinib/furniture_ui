// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  List picked = [false, false];

  int totalAmount = 0;

  ///+ a function to choose element(index) in a list
  pickedToggle(index) {
    setState(() {
      ///? calling the oppsite/reverse of index
      //// picked = not picked
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  //// get total if picked or not
  getTotalAmount() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ///! 🔶 🟩
          Column(
            children: [
              ///! 🔶🟩 🟡
              Stack(
                children: [
                  ///! 🔶🟩🟡 💙
                  ///* TOP SQUARE
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color.fromARGB(255, 0, 162, 100),
                  ),

                  ///* FIRST CIRCLE
                  Positioned(
                    bottom: 0,
                    right: 200,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color.fromARGB(59, 84, 209, 163),
                      ),
                    ),
                  ),

                  ///* SECOND CIRCLE
                  Positioned(
                    bottom: 50,
                    left: 200,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color.fromARGB(59, 84, 209, 163),
                      ),
                    ),
                  ),

                  ///! 🔶🟩🟡 🟩
                  ///? COLUMN ARROW & TEXT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                        height: 10,
                      ),

                      ///! 🔶🟩🟡🟩 💙
                      ///* ARROW
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),

                        ///! 🔶🟩🟡🟩 ⚪
                        ///* TEXT
                        child: Text(
                          'Shopping Cart',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  ///+ A CUSTOM FUNCTION TO CREATE 'LIST DESIGNS' TO BE 'CALLED' AND DISPLAYED
  Widget itemCard(itemName, color, price, imgPath, available, i) {
    ///? Inkwell
    return InkWell(
      onTap: () {},
      child: Padding(
        ///* space around padding
        padding: EdgeInsets.all(10),

        ///? Material widget
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 3,

          ///! 💙
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            width: MediaQuery.of(context).size.width - 20.0,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            ///! 💙🟥
            ///? RADIO BUTTON
            child: Row(
              children: [
                ///! 💙🟥🟩
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///! 💙🟥🟩 💙
                    ///? PASSING DATA FOR "AVAILABLE" PARAMETER BUTTON
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: available
                            //// if available (true)
                            ? Colors.grey.withOpacity(0.4)
                            //// if not available (false)
                            : Colors.red.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12.5),
                      ),
                      child: Center(
                          child: available

                              ///! 💙🟥🟩 💙 💙
                              //// if available (true)
                              ? Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: picked[i]
                                          //// if selected (true / false)
                                          ? Colors.yellow
                                          : Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(6)),
                                )
                              //// if not available (false)
                              : Container()),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
