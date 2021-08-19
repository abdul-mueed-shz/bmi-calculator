import 'dart:io';
import 'dart:math';

import 'package:bmiapp/services/age.dart';
import 'package:bmiapp/services/calcbmi.dart';
import 'package:bmiapp/services/gender.dart';
import 'package:bmiapp/services/height.dart';
import 'package:bmiapp/services/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//Variables-
  //bool genderSelected = false;
  double height = 30.0;
  int age = 0;
  int weight = 2;
  double BMI = 0.0;
  bool genderSelected = false;
//Functions
//Age Widget Functions
  void agePlus() {
    setState(() {
      if (age < 200) age++;
    });
  }

  void ageSub() {
    setState(() {
      if (age > 0) age--;
    });
  }

//Height Widget Function
  void setHeight(value) {
    setState(() {
      height = value;
    });
  }

//Weight Widget Function
  void plusWeight() {
    setState(() {
      if (weight < 300) weight++;
    });
  }

  void subWeight() {
    setState(() {
      if (weight > 2) weight--;
    });
  }

//GenderCheck
  void _genderSelect() {
    genderSelected = true;
  }

//Calculate Final BMi
  void calCulateBmi() {
    if (weight >= 2 && age > 0 && height >= 30 && genderSelected) {
      String Quote;
      setState(() {
        BMI =
            double.parse((weight / pow((height / 100), 2)).toStringAsFixed(1));
        if (BMI < 18.5) {
          Quote = "UnderWeight";
        } else if (BMI >= 18.5 && BMI < 24.9) {
          Quote = "Healthy";
        } else if (BMI >= 24.9 && BMI < 30) {
          Quote = "OverWeight";
        } else {
          Quote = "Suffering from Obesity";
        }
        Navigator.pushNamed(context, '/result', arguments: {
          'bmi': BMI,
          'message': Quote,
        });
      });
    }
  }

  //Reset Function
  void resetData() {
    //genderSelected = false;
    setState(() {
      height = 30.0;
      age = 0;
      weight = 2;
      BMI = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //print('height:+$height');
    final Appbar = AppBar(
      leading: IconButton(
        onPressed: () => resetData(),
        icon: Icon(Icons.align_horizontal_left),
      ),
      title: Text(
        'BMI Calculator',
        style: TextStyle(color: Colors.white), //fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () => exit(0),
          icon: Icon(
            Icons.exit_to_app,
          ),
        ),
      ],
      centerTitle: true,
    );
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: Appbar,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              height: (MediaQuery.of(context).size.height -
                      Appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.30,
              child: Gender(
                genderSelected: _genderSelect,
                //notSelected: notSelected,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 20.0),
              color: Colors.indigo[800],
              height: (MediaQuery.of(context).size.height -
                      Appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.25,
              child: Height(
                slidervalue: height,
                heightSet: setHeight,
              ),
            ),
            Container(
              color: Colors.transparent,
              height: (MediaQuery.of(context).size.height -
                      Appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.3118,
              child: LayoutBuilder(
                builder: (builder, constraints) => Row(
                  children: <Widget>[
                    Weight(
                      weight: weight,
                      weightAdd: plusWeight,
                      weightSub: subWeight,
                    ),
                    Age(
                      age: age,
                      plusAge: agePlus,
                      subAge: ageSub,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: (MediaQuery.of(context).size.height -
                      Appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.10,
              child: CalcBmi(calculateBmi: calCulateBmi),
            ),
          ],
        ));
  }
}
