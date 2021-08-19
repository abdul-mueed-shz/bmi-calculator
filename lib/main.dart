import 'package:bmiapp/pages/home.dart';
import 'package:bmiapp/pages/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/result': (context) => Result(),
      },
      //home: Result(),
      theme: ThemeData(
        accentColor: Colors.pink,
        primaryColor: Colors.indigo[900],
        // primarySwatch: Colors.indigo,
        textTheme: ThemeData.light()
            .textTheme
            .copyWith(title: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(fontWeight: FontWeight.bold),
                )),
      ),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}
