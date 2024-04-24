// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:money_minds/utils/color_constants.dart';
import 'package:money_minds/view/loginscreen/loginscreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.myblack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colorconstants.mywhite),
                ),
                SizedBox(height: 10),
                Text(
                  "Create your account",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colorconstants.mywhite),
                ),
                SizedBox(height: 20),
                //Username---------------------------
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colorconstants.mydarkgrey,
                    filled: true,
                    label: Text(
                      "Username",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colorconstants.mywhite,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // E mail------------------------------
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colorconstants.mydarkgrey,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colorconstants.mywhite,
                    ),
                    label: Text(
                      "E mail",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Password--------------------------------
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colorconstants.mydarkgrey,
                    filled: true,
                    focusColor: Colorconstants.myblack,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colorconstants.mywhite,
                    ),
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Confirm Password---------------------------
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colorconstants.mydarkgrey,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colorconstants.mywhite,
                    ),
                    label: Text(
                      "Confirm Password",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colorconstants.mywhite),
                    )),
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colorconstants.mydarkgrey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginscreen(),
                            ));
                      },
                      child: Text("Login"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
