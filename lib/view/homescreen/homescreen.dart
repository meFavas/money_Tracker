// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_string_escapes, avoid_print, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_minds/controller/homescreen_controller.dart';

import 'package:money_minds/utils/color_constants.dart';
import 'package:money_minds/view/budget_setting_screen/budget_setting_screen.dart';

import 'package:money_minds/view/homescreen/cutomexpensecard.dart';
import 'package:money_minds/view/homescreen/drawer_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homescreencontroller homeobj = Homescreencontroller();

  var formkey = GlobalKey<FormState>();

  //dialog box open----------------------------
  void openbox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colorconstants.mydarkgrey,
        title: Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                "Add Expense",
                style: TextStyle(
                    color: Colorconstants.mywhite, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (homeobj.amountcontroller.text.isNotEmpty) {
                    return null;
                  } else {
                    return "Enter Amount";
                  }
                },
                controller: homeobj.namecontroller,
                decoration: InputDecoration(hintText: "Name"),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (homeobj.namecontroller.text.isNotEmpty) {
                    return null;
                  } else {
                    return "Enter a Name";
                  }
                },
                controller: homeobj.amountcontroller,
                decoration: InputDecoration(hintText: "Amount"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Cancel button----------------------------
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      homeobj.cleardata();
                    },
                    child: Text("Cancel"),
                  ),
                  //Save button----------------------------------
                  TextButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        homeobj.adddata();
                        print(homeobj.namecontroller);
                        homeobj.cleardata();
                        Navigator.pop(context);
                        setState(() {});
                      }
                    },
                    child: Text("Save"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  //homescreen-----------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.myblack,
      // Appbar-----------------------------------
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: Text(
          "Hi Favas ",
          style: TextStyle(
              color: Colorconstants.mywhite,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                //open dialogue box
                openbox();
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                //open drawer
                Scaffold.of(context).openDrawer();
              },
              child: CircleAvatar(
                radius: 28,
              ),
            ),
          ),
        ),
      ),
      //drawer screen----------------
      drawer: Drawerscreen(),
      //body--------------
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Monthly \nEarnings",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colorconstants.mywhite),
                    ),
                    Text(
                      "\₹ 12000/-",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colorconstants.mywhite),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Monthly \nExpences",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colorconstants.mywhite),
                    ),
                    Text(
                      "\₹ 6997/-",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colorconstants.mywhite),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BudgetSettingscreen(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colorconstants.mydarkgreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Set Your Budget",
                      style: TextStyle(
                          color: Colorconstants.mywhite, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Customexpensecard(
                        index: index,
                        obj: homeobj,
                        name: Homescreencontroller.expenselist[index]["name"]
                            .toString(),
                        amount: Homescreencontroller.expenselist[index]
                                ["amount"]
                            .toString(),
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: Homescreencontroller.expenselist.length),
            ),
          ],
        ),
      ),
    );
  }
}
