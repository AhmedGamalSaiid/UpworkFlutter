import 'package:flutter/material.dart';
// import 'package:upwork/View/components/Talent/Inreview.dart';
// import 'package:upwork/View/components/Talent/Pending.dart';
//import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
// import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
//import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/Pages/TalentPages/reports.dart';
// import 'package:upwork/View/components/Talent/Available.dart';
// import 'package:upwork/View/components/Talent/Workinprogress.dart';
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
      home: ReportsPage(),
      //AvailablePage(),
      //ProposalsPage(),
      //WorkInProgressPage(),
      //PendingPage(),
      //InReviewPage(),
      //Welcome(),
    );
  }
}
