// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_minds/controller/budetscreen_controller.dart';

import 'package:money_minds/utils/color_constants.dart';
import 'package:money_minds/view/bottom_sheet/bottom_sheet.dart';
import 'package:money_minds/view/bottomnav_screen/bottomnav_screen.dart';

class BudgetSettingscreen extends StatefulWidget {
  const BudgetSettingscreen({super.key});

  @override
  State<BudgetSettingscreen> createState() => _BudgetSettingscreenState();
}

class _BudgetSettingscreenState extends State<BudgetSettingscreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.myblack,
      appBar: AppBar(
        title: Text(
          "Set Your Budget",
          style: TextStyle(
              color: Colorconstants.mywhite, fontWeight: FontWeight.w300),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Bottomnavscreen(),
                ));
          },
          icon: Icon(Icons.arrow_back),
          color: Colorconstants.mywhite,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.separated(
          itemCount: Budgetscreencontroller.budgetList.length,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: bottomsheet(
                    budgetamount:
                        Budgetscreencontroller.Monthlyamountcontroller.text,
                    budgetname: Budgetscreencontroller.budgetList[index]
                        ["name"],
                  ),
                ),
              );
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      Budgetscreencontroller.budgetList[index]["name"],
                      style: TextStyle(
                          fontSize: 25,
                          color: Colorconstants.mywhite,
                          fontWeight: FontWeight.w100),
                    ),
                    Spacer(),
                    Text(
                      "₹ ${Budgetscreencontroller.Monthlyamountcontroller.text}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colorconstants.mywhite),
                    )
                  ],
                ),
              ),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colorconstants.mydarkgrey),
            ),
          ),
        ),
      ),
    );
  }
}
