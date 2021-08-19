import 'package:flutter/material.dart';

// ignore: must_be_immutable

class Age extends StatelessWidget {
  final int age;
  final Function plusAge;
  final Function subAge;
  Age({required this.age, required this.plusAge, required this.subAge});
  @override
  Widget build(BuildContext context) {
    //print(age);
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(3.0, 0.0, 20.0, 20.0),
        decoration: BoxDecoration(color: Colors.indigo[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Age',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(
              '${age}',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn3",
                  backgroundColor: Colors.indigo[600],
                  onPressed: () {
                    subAge();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 8.0),
                FloatingActionButton(
                  heroTag: "btn4",
                  backgroundColor: Colors.indigo[600],
                  onPressed: () {
                    plusAge();
                  },
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
