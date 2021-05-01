import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/EditIcon.dart';
import 'package:upwork/View/components/Talent/LinkIcon.dart';

import '../../../constanse.dart';
import 'SelectDropDown.dart';

class ProfileViewProfile extends StatefulWidget {
  @override
  _ProfileViewProfileState createState() => _ProfileViewProfileState();
}

class _ProfileViewProfileState extends State<ProfileViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                "View Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            EditIcon(),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 0,
            bottom: 10,
          ),
          child: SelectDropDown(
            [
              "All Work",
              "CMS Development",
              "Frontend Development",
            ],
            isExpand: true,
          ),
        ),
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
                "Web Developer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            EditIcon(),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.centerRight,
              child: LinkIcon(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20),
          child: Row(
            children: [
              Text(
                "\$20.00/hr",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: EditIcon(),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 18.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.5,
                color: bgUpworkSection,
              ),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 15,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    "I am a Professional Freelancer Developer. I have developed a wide range of websites using HTML/CSS, Javascript, jQuery, Bootstrap and WordPress. As a highly creative Frontend and WordPress Developer.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: EditIcon(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
