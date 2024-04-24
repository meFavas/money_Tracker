// ignore_for_file: prefer_const_constructors



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:money_minds/controller/homescreen_controller.dart';
import 'package:money_minds/utils/color_constants.dart';

class Customexpensecard extends StatefulWidget {
  const Customexpensecard({
    super.key,
    required this.name,
    required this.amount,
    required this.obj,
    required this.index,
  });

  final String name;
  final String amount;
  final Homescreencontroller obj;
  final int index;

  @override
  State<Customexpensecard> createState() => _CustomexpensecardState();
}

class _CustomexpensecardState extends State<Customexpensecard> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: (context) {
            widget.obj.deletedata(widget.index);
           
          },
          icon: (Icons.delete),
          backgroundColor: Colors.red,
          borderRadius: BorderRadius.circular(10),
          autoClose: true,
        )
      ]),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colorconstants.mydarkgrey),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  widget.name,
                  maxLines: 1,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colorconstants.mywhite,
                      fontSize: 20),
                ),
              ),
              Spacer(),
              Text(
                "- ₹ ${widget.amount}",
                style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
