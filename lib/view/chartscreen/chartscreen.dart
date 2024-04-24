// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_minds/utils/color_constants.dart';
import 'package:pie_chart/pie_chart.dart';

class Chartscreen extends StatelessWidget {
  const Chartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataMap = <String, double>{
      "Expense": 1,
      "Earnings": 3,
      "Savings": 2,
      "Others": 2,
    };
    return Scaffold(
      backgroundColor: Colorconstants.myblack,
      body: Column(
        children: [
          SizedBox(height: 30),
          PieChart(
            legendOptions: LegendOptions(
                legendTextStyle: TextStyle(
                  color: Colorconstants.mywhite,
                ),
                showLegendsInRow: true,
                legendPosition: LegendPosition.top),
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            centerText: "Budget\nchart",
            centerTextStyle: TextStyle(
                color: Colorconstants.mywhite,
                fontWeight: FontWeight.bold,
                fontSize: 20),
            chartType: ChartType.ring,
            chartRadius: 200,
            baseChartColor: Colorconstants.mydarkgreen,
            colorList: [
              Colors.red,
              Colors.blue,
              Colors.green,
              Colors.orange,
            ],
            ringStrokeWidth: 50,
            chartValuesOptions: ChartValuesOptions(
                showChartValuesOutside: true,
                showChartValuesInPercentage: true,
                chartValueBackgroundColor: Colorconstants.myblack,
                chartValueStyle: TextStyle(
                    color: Colorconstants.mywhite,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
