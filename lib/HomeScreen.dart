import 'dart:math';

import 'package:bmi_calculator/Bmi_Result_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 12;
  int weight = 45;
  double valueSlider = 80;

  Color mealColor = Colors.white;
  double mealFontSize = 25;

  Color femealColor = Colors.white;
  double femealFontSize = 25;

  late bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 32, 42, 0.9),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 32, 42, 0.9),
        centerTitle: true,
        elevation: 5,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 73, 94, 0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          mealColor = Colors.blue;
                          mealFontSize = 30;

                          femealColor = Colors.white;
                          femealFontSize = 25;
                          isMale = true;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("images/meal.png"),
                            width: 90,
                            height: 90,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "MEAL",
                            style: TextStyle(
                              fontSize: mealFontSize,
                              fontWeight: FontWeight.bold,
                              color: mealColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsetsDirectional.fromSTEB(0, 15, 20, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 73, 94, 0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          femealColor = Colors.blue;
                          femealFontSize = 30;

                          mealColor = Colors.white;
                          mealFontSize = 25;

                          isMale = false;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("images/femeal.png"),
                            width: 90,
                            height: 90,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "FEMEAL",
                            style: TextStyle(
                              fontSize: femealFontSize,
                              fontWeight: FontWeight.bold,
                              color: femealColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(52, 73, 94, 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${valueSlider.round()}",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Slider(
                      thumbColor: Colors.red,
                      activeColor: Colors.red,
                      min: 80,
                      max: 210,
                      value: valueSlider,
                      onChanged: (value) {
                        setState(() {
                          valueSlider = value;
                        });
                        // print("value: ${valueSlider.round()}");
                      }),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 73, 94, 0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FloatingActionButton(
                                heroTag: "weight--",
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                                heroTag: "weight++",
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 73, 94, 0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FloatingActionButton(
                                heroTag: "age--",
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                                heroTag: "age++",
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: MaterialButton(
              child: Text(
                "Result",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              onPressed: () {
                int height = valueSlider.round();
                var result = weight / pow(height / 100, 2);
                int newResult = result.round();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (contextPage2) {
                    return Bmi_Result_Screen(isMale, newResult, age);
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
