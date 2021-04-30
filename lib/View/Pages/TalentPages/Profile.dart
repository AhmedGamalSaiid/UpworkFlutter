import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/EditIcon.dart';
import 'package:upwork/View/components/Talent/ProfileHeadSection.dart';
import 'package:upwork/View/components/Talent/ProfileTotalEarning.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String dropdownValue;
  List ListItems = ["All Work", "CMS Development", "Frontend Development"];
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
      body: Column(
        children: [
          ProfileHeadSection(),
          ProfileTotalEarning(),
          Column(
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
              DropdownButton(
                hint: Text("All Work"),
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: ListItems.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
