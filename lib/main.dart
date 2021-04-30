import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
import 'package:upwork/View/Pages/TalentPages/Jobs.dart';
import 'constanse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool login = false;
    return MaterialApp(
      title: 'Upwork',
      theme: ThemeData(
        primaryColor: bgUpwork,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: login?Jobs(): Welcome(),
    );
  }
}
