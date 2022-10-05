import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  List<bool> _isClicked =[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(top: 5.h),
      height: 10.h,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 6.h,
              decoration: BoxDecoration(
                  color:_isClicked[0] ? Colors.blue:Colors.white,
                  borderRadius: BorderRadius.circular(10.w),
                  border: Border.all(color: Colors.grey)),
              width: 27.w,
              child: IconButton(
                  onPressed: (() {
                    setState(() {
                      _isClicked=[true,false,false];                      
                    });
                  }),
                  icon: Text("Female"))),
          Container(
              decoration: BoxDecoration(
                color:_isClicked[1] ? Colors.blue:Colors.white,
                  borderRadius: BorderRadius.circular(10.w),
                  border: Border.all(color: Colors.grey)),
              width: 27.w,
              height: 6.h,
              child: IconButton(
                  onPressed: (() {
                    setState(() {
                      _isClicked=[false,true,false];                      
                    });                     
                  }),
                  icon: Text("Male"))),
          Container(
              decoration: BoxDecoration(
                color:_isClicked[2] ? Colors.blue:Colors.white,
                  borderRadius: BorderRadius.circular(10.w),
                  border: Border.all(color: Colors.grey)),
              width: 27.w,
              height: 6.h,
              child: IconButton(
                  onPressed: (() {
                    setState(() {
                      _isClicked=[false,false,true];                      
                    });  
                    
                  }),
                  icon: const Text("Other"))),
        ],
      ),
    );
  }
}

