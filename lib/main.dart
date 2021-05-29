import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/createprofilephoto.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/welcome.dart';
import 'package:upwork/View/Pages/TalentPages/Contracts.dart';
import 'package:upwork/View/Pages/TalentPages/HomePage.dart';
import 'package:upwork/View/Pages/TalentPages/Messages.dart';
import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/Pages/TalentPages/myreports.dart';
import 'constanse.dart';
import 'firebaseApp.dart';
import 'View/Pages/BeforeLoginPages/createprofilephoto.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var login = auth.currentUser;
    return MaterialApp(
      title: 'Upwork',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: bgUpworkDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => login != null ? HomePage() : Welcome(),
        '/jobs': (context) => HomePage(),
        '/proposals': (context) => ProposalsPage(),
        '/contracts': (context) => Contracts(),
        '/messages': (context) => Messages(),
        // '/alerts': (context) => (),
        '/reports': (context) => ReportsPage(),
      },
    );
  }
}
