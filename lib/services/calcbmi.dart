import 'package:bmiapp/services/height.dart';
import 'package:flutter/material.dart';

class CalcBmi extends StatelessWidget {
  final Function calculateBmi;
  CalcBmi({required this.calculateBmi});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Theme.of(context).accentColor,
        onPressed: () {
          calculateBmi();
        },
        child: Text(
          'Calculate Your BMI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
