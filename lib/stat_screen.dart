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
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.amber.shade400,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 50,
                    width: 50,
                    color: Colors.blue,
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
