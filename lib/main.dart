import 'package:drill_series_code/home.dart';
import 'package:drill_series_code/pages/task1.dart';
import 'package:drill_series_code/pages/task2.dart';
import 'package:drill_series_code/pages/task3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/task1': (BuildContext context) => Task1Page(),
        '/task2': (BuildContext context) => Task2Page(),
        '/task3': (BuildContext context) => Task3Page(),
      },
    );
  }
}
