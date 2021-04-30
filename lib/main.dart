import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/TalentPages/HomePage.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
// import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
import 'constanse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //bool login = false;
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarManager.setColor(Colors.white, animated: true);
    return MaterialApp(
      title: 'Upwork',
      theme: ThemeData(
        primaryColor: bgUpworkDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
