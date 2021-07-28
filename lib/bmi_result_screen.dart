import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final double result;
  final bool isMale;
  final int age;


  BmiResultScreen({ required this.result, required this.isMale, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x83030305),
      appBar:AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        title: Text(
            'BMI Result'
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon : Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isMale ? Colors.blueAccent : Colors.pinkAccent,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: isMale ? Colors.blueAccent : Colors.pinkAccent),
                  borderRadius: BorderRadius.circular(10.0),

                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children : [
                      Text(
                        'Result : ',
                        style: TextStyle(
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        '${result.toStringAsFixed(1)}',
                        style: TextStyle(
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold,
                            color: isMale ? Colors.blueAccent : Colors.pinkAccent
                        ),
                      ),
                    ]

                ),

              ),

              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender : ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    '${isMale ? 'Male' : 'Female'}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: isMale ? Colors.blueAccent : Colors.pinkAccent
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Age : ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    '$age',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: isMale ? Colors.blueAccent : Colors.pinkAccent
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: isMale ? Colors.blueAccent : Colors.pinkAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: [
                    Text(
                      'Your Weight status : ' + weightStatus(result),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Your body mass index, or BMI, is the relationship between your weight and your height. A BMI of 20-25 is ideal; 25-30 is overweight and over 30 is obese. If your BMI is under 18.5, you're considered underweight. If your BMI is 18.5-20, you're a bit underweight and can't afford to lose more.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                      ), textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Important Notice !',
                      style: TextStyle(
                          color: isMale ? Colors.blueAccent : Colors.pinkAccent,
                          fontSize: 16.0
                      ), textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'If a person has a high BMI, they are likely to have a high proportion of body fat, especially if their BMI falls in the obesity category.',
                      style: TextStyle(
                          color: isMale ? Colors.blueAccent : Colors.pinkAccent,
                          fontSize: 16.0
                      ), textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'For extremely muscular people, such as athletes and bodybuilders, height and weight measurements alone may not accurately indicate health, because muscle weighs more than fat.',
                      style: TextStyle(
                          color: isMale ? Colors.blueAccent : Colors.pinkAccent,
                          fontSize: 16.0
                      ), textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  String weightStatus(double bmi){
    var result;
    if (bmi < 18.5){
      result = 'Underweight';
    }else if(bmi<=24.9){
      result ='Normal weight';
    }else if(bmi<=29.9) {
      result = 'Overweight';
    }else if(bmi<=39.9) {
      result = 'Obesity class I';
    }else if(bmi<=39.9) {
      result = 'Obesity class II';
    }else{
      result = 'Obesity class III';
    }
    return result;
  }

}
