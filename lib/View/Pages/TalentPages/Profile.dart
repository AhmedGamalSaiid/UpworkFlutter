import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/ProfileAvailability.dart';
import 'package:upwork/View/components/Talent/ProfileEducation.dart';
import 'package:upwork/View/components/Talent/ProfileEmploymentHistory.dart';
import 'package:upwork/View/components/Talent/ProfileHeadSection.dart';
import 'package:upwork/View/components/Talent/ProfileLanguages.dart';
import 'package:upwork/View/components/Talent/ProfileOtherExperience.dart';
import 'package:upwork/View/components/Talent/ProfilePortofolio.dart';
import 'package:upwork/View/components/Talent/ProfileSkills.dart';
import 'package:upwork/View/components/Talent/ProfileTotalEarning.dart';
import 'package:upwork/View/components/Talent/ProfileViewProfile.dart';
import 'package:upwork/View/components/Talent/ProfileWorkHistory.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          CustomMenuButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeadSection(),
            ProfileTotalEarning(),
            ProfileViewProfile(),
            ProfileWorkHistory(),
            ProfilePortofolio(),
            ProfileSkills(),
            ProfileAvailability(
              "As Needed - Open to Offers",
            ),
            ProfileLanguages(
              "Fluent",
              arabic: "Native or Bilingual",
            ),
            ProfileEducation(),
            ProfileEmploymentHistory(),
            ProfileOtherExperience(),
          ],
        ),
      ),
    );
  }
}
