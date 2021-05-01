import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
// import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
import 'package:upwork/View/Pages/TalentPages/Contracts.dart';
import 'package:upwork/View/Pages/TalentPages/HomePage.dart';
import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/Pages/TalentPages/myreports.dart';
import 'constanse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarManager.setColor(Colors.white, animated: true);
    bool login = false;
    return MaterialApp(
        title: 'Upwork',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: bgUpworkDark,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => login ? HomePage() : Welcome(),
          '/jobs': (context) => HomePage(),
          '/proposals': (context) => ProposalsPage(),
          '/contracts': (context) => Contracts(),
          // '/messages': (context) => (),
          // '/alerts': (context) => (),
          '/reports': (context) => ReportsPage(),
        });
  }
}
