// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class Budgetscreencontroller {
  static TextEditingController Monthlyamountcontroller =
      TextEditingController();
  static const List<Map> budgetList = [
    {"name": "Monthly Salary", "budget": "₹ 0/-"},
    {"name": "Other income", "budget": "₹ 0/-"},
    {"name": "Monthly expence", "budget": "₹ 0/-"},
    {"name": "Loans/EMI", "budget": "₹ 0/-"},
    {"name": "Savings", "budget": "₹ 0/-"},
    {"name": "Others", "budget": "₹ 0"},
  ];
}
