// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:money_minds/utils/color_constants.dart';

class Drawerscreen extends StatelessWidget {
  const Drawerscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colorconstants.mydarkgreen,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text("Favas"),
            accountEmail: Text("Sanufavas515@gmail.com"),
            arrowColor: Colors.black,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colorconstants.mywhite),
                ),
                Icon(
                  Icons.settings,
                  color: Colorconstants.mywhite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.purple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colorconstants.mywhite),
                ),
                Icon(
                  Icons.logout,
                  color: Colorconstants.mywhite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
