import 'package:flutter/material.dart';

class Weight extends StatelessWidget {
  final int weight;
  final Function weightAdd;
  final Function weightSub;
  Weight(
      {required this.weightAdd, required this.weightSub, required this.weight});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 3.0, 20.0),
        decoration: BoxDecoration(color: Colors.indigo[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Weight',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$weight',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Kg',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  backgroundColor: Colors.indigo[600],
                  onPressed: () {
                    weightSub();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 8.0),
                FloatingActionButton(
                  heroTag: "btn2",
                  backgroundColor: Colors.indigo[600],
                  onPressed: () {
                    weightAdd();
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
