// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_minds/utils/color_constants.dart';
import 'package:money_minds/view/bottomnav_screen/bottomnav_screen.dart';

import 'package:money_minds/view/signupscreen/signupscreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                  "Welcome",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colorconstants.mywhite),
                ),
                SizedBox(height: 10),
                Text(
                  "Login to your account",
                  style: TextStyle(color: Colorconstants.mywhite),
                ),
                SizedBox(height: 20),

                //Username---------------------------
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colorconstants.mydarkgrey,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colorconstants.mywhite,
                    ),
                    label: Text(
                      "Username",
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {}, child: Text("Forgot Password ?"))
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottomnavscreen(),
                        ));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Login",
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
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have an account ?",
                      style: TextStyle(color: Colorconstants.mywhite),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signupscreen(),
                            ),
                          );
                        },
                        child: Text("Signup"))
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
