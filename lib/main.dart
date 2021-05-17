import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:upwork/View/Pages/TalentPages/Messages.dart';
import 'View/Pages/BeforeLoginPages/CreateProfileEperience.dart';
import 'View/Pages/BeforeLoginPages/Location.dart';
import 'View/Pages/TalentPages/Contracts.dart';
import 'View/Pages/TalentPages/HomePage.dart';
import 'View/Pages/TalentPages/Message.dart';
import 'View/Pages/TalentPages/Proposals.dart';
import 'View/Pages/TalentPages/myreports.dart';
import 'View/Pages/BeforeLoginPages/welcome.dart';
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
    FlutterStatusbarManager.setColor(Colors.white, animated: true);
    var login = auth.currentUser;
    print(login);
    return MaterialApp(
      title: 'Upwork',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: bgUpworkDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:
          //Phone(),
          //Location(),
          //EmployementDetails(),
          //EducationDetails(),
          //Education(),
          //Expertise(),
          //Createprofile(),
          //Messages(),
          // Message(),
          //CreateProfileEperience(),
          CreateProfilePhoto(),
    );
    // initialRoute: '/',
    // routes: {
    //   '/': (context) => login != null ? HomePage() : Welcome(),
    //   '/jobs': (context) => HomePage(),
    //   '/proposals': (context) => ProposalsPage(),
    //   '/contracts': (context) => Contracts(),
    //   '/messages': (context) => Messages(),
    //   // '/alerts': (context) => (),
    //   '/reports': (context) => ReportsPage(),
    // });
  }
}
