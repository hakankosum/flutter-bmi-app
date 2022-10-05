import 'package:bmi/widgets/calculateButton.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/header.dart';
import 'package:bmi/widgets/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        // ignore: prefer_const_constructors
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(
            title: '',
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(right: 5.w, left: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              header(),
              gender(),
              userInfo(),
              Align(
                alignment: Alignment.bottomCenter,
                child: calculateButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
