import 'dart:math';
import 'package:flash/flash.dart';

import 'package:bmi/widgets/resultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import "package:bmi/widgets/userInfo.dart";

class calculateButton extends StatefulWidget {
  const calculateButton({super.key});

  @override
  State<calculateButton> createState() => _calculateButtonState();
}

// ignore: camel_case_types
class _calculateButtonState extends State<calculateButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 8.h,
        width: 100.w,
        margin: EdgeInsets.only(top: 20.h),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(4.h)),
        child: IconButton(
          onPressed: () {
            if (userInfo.age < 3 ||
                userInfo.age > 200 ||
                userInfo.height < 50 ||
                userInfo.height > 250 ||
                userInfo.weight < 30 ||
                userInfo.weight > 300) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration:const Duration(milliseconds: 500),
                backgroundColor: Theme.of(context).errorColor,
                
                  content: Container(
                    
                      alignment: Alignment.topCenter,
                      height: 40,
                      width: double.infinity,
                      child: Text("Invalid Input!"))));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return resultPage(
                  result: userInfo.weight / pow(2, userInfo.height / 100),
                );
              })));
            }
          },
          icon: const Text(
            "Calculate BMI",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ));
  }
}
