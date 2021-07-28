import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bmi_calculator/bmi_result_screen.dart';

class BmiCalculatorScreen extends StatefulWidget {


  @override
  _BmiCalculatorScreenState createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {

  bool isMale=true;
  bool isFemale=false;

  String gender="male";
  int height=180;
  int weight=60;
  int age=28;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0x83030305),
      appBar:AppBar(

        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        title: Text('BMI Calculator'),
        centerTitle: true,

      ),
      body: Column(
        children: [
          //Male Female
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(isMale){

                          }else{
                            isMale=true;
                            isFemale=false;
                          }
                        });

                      },
                      child: Container(
                        decoration:  BoxDecoration(

                          border: isMale ? Border.all(color: Colors.blueAccent) : Border.all(color: Color(0x83262E50)),
                          borderRadius: BorderRadius.circular(20.0, ),
                        )  ,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0, ),

                            color: Color(0x83262E50),
                          ),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/male_symbol.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              Text(
                                'MALE',
                                style:TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontWeight:FontWeight.w400
                                )
                                ,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(isFemale){

                          }else{
                            isMale=false;
                            isFemale=true;
                          }
                        });

                      },
                      child: Container(
                        decoration:  BoxDecoration(

                          border: isFemale ? Border.all(color: Colors.pinkAccent) : Border.all(color: Color(0x83262E50)),
                          borderRadius: BorderRadius.circular(20.0, ),
                        )  ,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0, ),
                            color: Color(0x83262E50),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 40),

                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/female_symbol.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              Text(
                                'FEMALE',
                                style:TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400
                                )
                                ,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          //Height
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex : 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0, ),
                        color: Color(0x83262E50),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style:TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight:FontWeight.w400
                            )
                            ,),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('$height' ,
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight:FontWeight.bold,
                                )
                                ,),
                              Text('cm' ,
                                style:TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0,
                                  fontWeight:FontWeight.w400,

                                )
                                ,),
                            ],
                          ),
                          Slider(
                            min: 80,
                            max: 300,
                            value: height.toDouble(),
                            onChanged: (double value){
                              setState(() {
                                height=value.toInt();
                              });
                            },
                            inactiveColor: Colors.grey,
                            activeColor: isMale ? Colors.blueAccent : Colors.pinkAccent,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          //weight and age
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0, ),
                        color: Color(0x83262E50),


                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',
                            style:TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                                fontWeight:FontWeight.w400
                            )
                            ,),
                          SizedBox(height: 6.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('$weight' ,
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight:FontWeight.bold,
                                )
                                ,),

                              Text('Kg' ,
                                  style:TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0,
                                    fontWeight:FontWeight.w400,

                                  ))
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4F4F5A),

                                    border: Border.all(

                                    )
                                ),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: isMale ? Colors.blue : Colors.pink,
                                  ),

                                ),
                              ),
                              SizedBox(width: 7.0),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4F4F5A),

                                    border: Border.all(

                                    )
                                ),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: isMale ? Colors.blue : Colors.pink,
                                  ),

                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0, ),
                        color: Color(0x83262E50),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style:TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                                fontWeight:FontWeight.w400
                            )
                            ,),
                          SizedBox(height: 6.0),
                          Text(
                            '$age' ,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight:FontWeight.bold,
                            )
                            ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4F4F5A),

                                    border: Border.all(

                                    )
                                ),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: isMale ? Colors.blue : Colors.pink,
                                  ),

                                ),
                              ),
                              SizedBox(width: 7.0),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4F4F5A),

                                    border: Border.all(

                                    )
                                ),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });

                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: isMale ? Colors.blue : Colors.pink,
                                  ),

                                ),
                              )
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          //calculate button
          Container(
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight:Radius.circular(50),topLeft:Radius.circular(50)),
              border: Border.all(),
              color: isMale ? Colors.blue : Colors.pink,
              boxShadow: [
                BoxShadow(
                  color: isMale ? Colors.blueAccent.withOpacity(0.5) : Colors.pinkAccent.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],

            ),
            child: MaterialButton(

              onPressed: (){
                /*showDialog(context: context, builder: (BuildContext context){
                  return
                    AlertDialog(
                      title: Text('Your BMI'),
                      content: Text('${((weight)/((height/100)*(height/100))).toStringAsFixed(1)}'
                      ),
                    );
                });*/
                Navigator.push(

                  context,
                  MaterialPageRoute(
                    builder: (context) =>BmiResultScreen(
                      result: ((weight)/((height/100)*(height/100))) ,
                      isMale: isMale,
                      age: age,
                    ),
                  ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                ),
              ),



            ),
          )

        ],
      ),

    );
  }
}
