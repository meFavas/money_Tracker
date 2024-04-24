// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_minds/utils/color_constants.dart';

import 'package:money_minds/view/chartscreen/chartscreen.dart';
import 'package:money_minds/view/homescreen/homescreen.dart';
import 'package:money_minds/view/savings_screen/savings_screen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentindex = 0;
  List screens = [
    Homescreen(),
    Chartscreen(),
    Savingsscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colorconstants.myblack,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colorconstants.mydarkgreen,
        selectedFontSize: 18,
        currentIndex: currentindex,
        onTap: (index) {
          currentindex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: "Charts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service), label: "Savings"),
        ],
      ),
      body: screens[currentindex],
    );
  }
}
