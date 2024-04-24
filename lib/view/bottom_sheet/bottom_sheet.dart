// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_minds/controller/budetscreen_controller.dart';

import 'package:money_minds/utils/color_constants.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet(
      {super.key, required this.budgetname, required this.budgetamount});
  final String budgetname;
  final String budgetamount;

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    Budgetscreencontroller budgetobj = Budgetscreencontroller();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colorconstants.mydark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ("Add ${widget.budgetname}"),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colorconstants.mywhite),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: Budgetscreencontroller.Monthlyamountcontroller,
              decoration: InputDecoration(
                fillColor: Colors.grey[600],
                filled: true,
                label: Text(
                  "₹ Enter Amount",
                  style: TextStyle(color: Colorconstants.mywhite),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Budgetscreencontroller.Monthlyamountcontroller.clear();
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red[400]),
                    child: Icon(
                      Icons.cancel,
                      size: 35,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[400]),
                    child: Icon(
                      Icons.check_box,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
