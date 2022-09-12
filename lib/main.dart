import 'package:bmi_calculator/Result.dart';
import 'package:flutter/material.dart';

import 'BMI_Calculator.dart';


void main()=>runApp(FirstScreen());
class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  Widget build(BuildContext context){
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      initialRoute: BMI.route,
      routes: {
        BMI.route :(context )=>BMI(),
        Result.route :(context) => Result(),
      },
    );
  }
}


