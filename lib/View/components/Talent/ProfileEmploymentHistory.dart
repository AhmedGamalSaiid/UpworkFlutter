import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/PlusIcon.dart';

import '../../../constanse.dart';
import 'ProfileEmploymentItem.dart';

class ProfileEmploymentHistory extends StatefulWidget {
  @override
  _ProfileEmploymentHistoryState createState() =>
      _ProfileEmploymentHistoryState();
}

class _ProfileEmploymentHistoryState extends State<ProfileEmploymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgUpworkSection,
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  top: 15,
                  bottom: 20,
                ),
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
                    Text(
                      "Employment History",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: PlusIcon(),
                    ),
                  ],
                ),
              ),
              for (var i = 0; i < 3; i++)
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: i != 2
                      ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.5,
                              color: bgUpworkSection,
                            ),
                          ),
                        )
                      : null,
                  child: ProfileEmploymentItem(
                    "Freelancer",
                    "WordPress Developer",
                    "March 2019 - Present",
                    description:
                        "Professional Freelancer as a Frontend Developer",
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
