import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final Function maleColorController;
  final Function maleButton;
  final Function femaleColorController;
  final Function femaleButton;
  Gender(
      {required this.maleButton,
      required this.femaleButton,
      required this.maleColorController,
      required this.femaleColorController});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builder, constraints) => Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: constraints.maxHeight * 0.85,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 3.0, 0.0),
              decoration: BoxDecoration(
                color: maleColorController(),
              ),
              child: Column(
                children: [
                  IconButton(
                      icon: Image.asset('assets/male.png'),
                      iconSize: 50,
                      onPressed: () {
                        maleButton();
                      }),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: constraints.maxHeight * 0.85,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.fromLTRB(3.0, 0.0, 20.0, 0.0),
              decoration: BoxDecoration(
                color: femaleColorController(),
              ),
              child: Column(
                children: [
                  IconButton(
                      icon: Image.asset('assets/femalex.png'),
                      iconSize: 50,
                      onPressed: () {
                        femaleButton();
                      }),
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
