// ignore_for_file: prefer_const_constructors, unnecessary_import, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_minds/controller/savingscreen_controller.dart';
import 'package:money_minds/utils/color_constants.dart';

class Savingsscreen extends StatelessWidget {
  const Savingsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Savingscreencontroller saveobj = Savingscreencontroller();
    return Scaffold(
      backgroundColor: Colorconstants.myblack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Money Saving Tips",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colorconstants.mywhite),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
            itemBuilder: (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          saveobj.savingtips[index]["title"],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Colorconstants.myblack,
                        ),
                        SizedBox(height: 10),
                        Text(
                          saveobj.savingtips[index]["description"],
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colorconstants.mywhite),
                      color: Colors.green[500]),
                ),
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: saveobj.savingtips.length),
      ),
    );
  }
}
