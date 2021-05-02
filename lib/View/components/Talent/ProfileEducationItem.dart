import 'package:flutter/material.dart';

import 'DeleteIcon.dart';
import 'EditIcon.dart';

class ProfileEducationItem extends StatefulWidget {
  final String school;
  final String duration;
  final String fieldofStudy;
  ProfileEducationItem(this.school, {this.duration, this.fieldofStudy});
  @override
  _ProfileEducationItemState createState() => _ProfileEducationItemState();
}

class _ProfileEducationItemState extends State<ProfileEducationItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      padding: const EdgeInsets.only(top: 8.0),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.school,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: EditIcon(),
              ),
              DeleteIcon(),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: widget.fieldofStudy != null
                ? Text(
                    widget.fieldofStudy,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                : Text(""),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            alignment: Alignment.centerLeft,
            child: widget.duration != null
                ? Text(
                    widget.duration,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                : Text(""),
          ),
        ],
      ),
    );
  }
}
