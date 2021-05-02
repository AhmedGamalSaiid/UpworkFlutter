import 'package:flutter/material.dart';
import 'package:upwork/Models/UserData.dart';

import 'PlusIcon.dart';
import 'ProfileEducationItem.dart';

class ProfileEducation extends StatefulWidget {
  final UserDataModel user;
  ProfileEducation(this.user);
  @override
  _ProfileEducationState createState() => _ProfileEducationState();
}

class _ProfileEducationState extends State<ProfileEducation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 15,
                  right: 20,
                  bottom: 15,
                ),
                child: Text(
                  "Education",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              PlusIcon(),
            ],
          ),
          for (var i = 0; i < 1; i++)
            ProfileEducationItem(
              widget.user.school,
              duration: "2020-2021",
              fieldofStudy: "Frontend And Cross-Platform Mobile",
            ),
        ],
      ),
    );
  }
}