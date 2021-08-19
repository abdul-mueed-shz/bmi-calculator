import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  final slidervalue;
  final Function heightSet;
  Height({required this.slidervalue, required this.heightSet});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builder, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            color: Colors.transparent,
            height: constraints.maxHeight * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${slidervalue.toStringAsFixed(0)}',
                      style: TextStyle(
                          fontSize: 46.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            height: constraints.maxHeight * 0.3,
            child: Slider(
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Colors.white,
              min: 30,
              max: 275,
              value: slidervalue,
              onChanged: (value) {
                heightSet(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
