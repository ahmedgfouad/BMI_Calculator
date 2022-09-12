import 'dart:math';

import 'package:flutter/material.dart';

import 'Result.dart';

class BMI extends StatefulWidget {
  static final route ='/pmi';
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<BMI> {

  @override
  bool isMale=true;
  double height =170.0;
  double weight =70;
  double age=20;

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            setState(() {
                              isMale=true;
                            });
                          },
                          child: Container(
                            decoration:BoxDecoration(
                                color: isMale ? Colors.blue: Colors.grey,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male,size: 70,),
                                SizedBox(height: 20,),
                                Text("Male",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale=false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: isMale ? Colors.grey : Colors.blue,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female,size: 70,),
                                SizedBox(height: 20,),
                                Text("Female",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height ",
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()} ",
                          style:TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("CM ",
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 100.0,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                        }
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight ",
                            style:TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("${weight} ",
                            style:TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE ",
                            style:TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("${age} ",
                            style:TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              double result=weight/pow(height/100, 2);
              Navigator.pushNamed(
                context,
                Result.route,
                arguments: result,
              );
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text("CAlculate ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
