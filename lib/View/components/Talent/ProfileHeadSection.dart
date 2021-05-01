import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/EditIcon.dart';

import '../../../constanse.dart';

class ProfileHeadSection extends StatefulWidget {
  ProfileHeadSection({Key key}) : super(key: key);

  @override
  _ProfileHeadSectionState createState() => _ProfileHeadSectionState();
}

class _ProfileHeadSectionState extends State<ProfileHeadSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgUpworkSection,
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: ExactAssetImage("assets/img/06.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: EditIcon(),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 5,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Color(0xff37a000),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Freelancer Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.room,
                            size: 15,
                          ),
                          Text(
                            "Freelancer Lacation",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Local Time",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.beenhere,
                            size: 15,
                            color: Color(0xFF1CAF9D),
                          ),
                          Text("RISING TALENT",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
