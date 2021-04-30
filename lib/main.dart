import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';

import 'constanse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //bool login = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upwork',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: bgUpwork,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Welcome(),
    );
  }
}
