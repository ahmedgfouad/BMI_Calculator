import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  static final route = 'result';

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {

    double? result =ModalRoute.of(context)!.settings.arguments as double ;
    String? status;
    String? advice ;
    if(result >= 18 && result <= 24){
        status ="Normal";
        advice = "You have a normal body weight good job !";
    }
    else if(result <18){
      status ="low weight";
      advice = "Your body weight is low, it should gain some weight";
    }
    else{
      status ="Overweight ";
      advice = "Your body weight is over, you should lose some weight";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30,),
            Text('$status',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            Text("${result.round()}",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('$advice',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("RE_Calculate  ",
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
      ),
    );
  }
}
