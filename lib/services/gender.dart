import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  final Function genderSelected;
  Gender({required this.genderSelected});
  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Color? maleColor = Colors.indigo[700];
  Color? femaleColor = Colors.indigo[700];
  bool notSelected = true;
  String gender = '';
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
                color: maleColor,
              ),
              child: Column(
                children: [
                  IconButton(
                    icon: Image.asset('assets/male.png'),
                    iconSize: 50,
                    onPressed: () {
                      if (notSelected) {
                        setState(() {
                          maleColor = Theme.of(context).accentColor;
                          gender = 'Male';
                          notSelected = false;
                          widget.genderSelected();
                        });
                      }
                    },
                  ),
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
              decoration: BoxDecoration(color: femaleColor),
              child: Column(
                children: [
                  IconButton(
                    icon: Image.asset('assets/femalex.png'),
                    iconSize: 50,
                    onPressed: () {
                      if (notSelected) {
                        setState(() {
                          femaleColor = Theme.of(context).accentColor;
                          gender = 'Female';
                          notSelected = false;
                          widget.genderSelected();
                        });
                      }
                    },
                  ),
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
