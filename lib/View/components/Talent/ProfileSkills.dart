import 'package:flutter/material.dart';

import '../../../constanse.dart';
import 'EditIcon.dart';

class ProfileSkills extends StatefulWidget {
  @override
  _ProfileSkillsState createState() => _ProfileSkillsState();
}

class _ProfileSkillsState extends State<ProfileSkills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.5,
            color: bgUpworkSection,
          ),
        ),
      ),
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
                  "Skills",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              EditIcon(),
            ],
          ),
          Wrap(
            spacing: 15,
            runSpacing: 5,
            children: [
              Chip(
                label: Text("HTML"),
              ),
              Chip(
                label: Text("CSS"),
              ),
              Chip(
                label: Text("JS"),
              ),
              Chip(
                label: Text("jQuery"),
              ),
              Chip(
                label: Text("Bootstrap"),
              ),
              Chip(
                label: Text("React.js"),
              ),
              Chip(
                label: Text("Angular"),
              ),
              Chip(
                label: Text("C#"),
              ),
              Chip(
                label: Text("Flutter"),
              ),
              Chip(
                label: Text("C++"),
              ),
              Chip(
                label: Text("TypeScript"),
              ),
              Chip(
                label: Text("PHP"),
              ),
              Chip(
                label: Text("C"),
              ),
              Chip(
                label: Text("sass"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
