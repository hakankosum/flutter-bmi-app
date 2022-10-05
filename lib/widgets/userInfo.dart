import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class userInfo extends StatefulWidget {
  const userInfo({super.key});
  static int age = 0;
  static double height = 0;
  static double weight = 0;

  @override
  State<userInfo> createState() => _userInfoState();
}

// ignore: camel_case_types
class _userInfoState extends State<userInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          toolbarOptions: const ToolbarOptions(
            copy: false,
            cut: false,
            paste: false,
            selectAll: false,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration: InputDecoration(
              labelText: "Age",
              labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
          onChanged: (value) {
            setState(() {
              if (value.isNotEmpty) {
                userInfo.age = int.parse(value);
                print(userInfo.age);
              }
            });
          },
        ),
        TextField(
          toolbarOptions: const ToolbarOptions(
            copy: false,
            cut: false,
            paste: false,
            selectAll: false,
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
          ],
          decoration: InputDecoration(
              labelText: "Weight (kg)",
              labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
          onChanged: (value) {
            setState(() {
              if (value.isNotEmpty) {
                userInfo.weight = double.parse(value);
                print(userInfo.weight);
              }
            });
          },
        ),
        TextField(
          toolbarOptions: const ToolbarOptions(
            copy: false,
            cut: false,
            paste: false,
            selectAll: false,
          ),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
          ],
          decoration: InputDecoration(
              labelText: "Height (cm)",
              labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
          onChanged: (value) {
            setState(() {
              if (value.isNotEmpty) {
                userInfo.height = double.parse(value);
                print(userInfo.height);
              }
            });
          },
        ),
      ],
    );
  }
}
