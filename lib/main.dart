// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/stat_screen.dart';
import '/shop_cart.dart';
import '/product_desc.dart';
import '/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  ////? a 'TAB' CONTROLLER (for bottom navigation bar) ////
  late TabController controller;

  @override
  void initState() {
    super.initState();
    //// amount of icons to show
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    ////implement dispose
    controller.dispose();
    super.dispose();
  }

  ////? end of tab controller ////
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      ///+ a 'bottom navigation bar' widget in scaffold
      ///// using 'home' argument sets main/default front page if not using routes to a navigated page
      home: Scaffold(
        bottomNavigationBar: Material(
          elevation: 30,
          color: Colors.white,
          child: TabBar(
            indicatorWeight: 5,
            controller: controller,
            indicatorColor: Colors.amber,
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.event_seat, color: Colors.grey)),
              Tab(icon: Icon(Icons.timer, color: Colors.grey)),
              Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
              Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
            ],
          ),
        ),
        ////+ A 'TABARVIEW' WIDGET IN BODY TO SHOW DIFFERENT PAGES
        body: TabBarView(
          //// need to add controller for 'tabcontroller' method
          controller: controller,
          children: [
            HomePage(),
            ProdDesc(),
            ShopCart(),
            StatScreen(),
          ],
        ),
      ),
    );
  }
}
