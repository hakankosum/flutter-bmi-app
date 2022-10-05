import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


// ignore: camel_case_types
class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 10.h,),
      
      child: Column(children:  [
      Text("Let's calculate your current BMI",style: TextStyle(fontSize: 36),),
      SizedBox(height: 2.h,),
      Text("You can find out whether you are overweight, underweight or ideal weight.",style: TextStyle(fontSize: 18),)
    ]),);
  }
}

