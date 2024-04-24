import 'package:flutter/cupertino.dart';

class Homescreencontroller {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController amountcontroller = TextEditingController();
  static List expenselist = [];
  void adddata() {
    expenselist.add({
      "name": namecontroller.text,
      "amount": amountcontroller.text,
    });
  }

  void cleardata() {
    namecontroller.clear();
    amountcontroller.clear();
  }

  void deletedata(index) {
    expenselist.removeAt(index);
  }
  void expenceadd(){
    
  }
}