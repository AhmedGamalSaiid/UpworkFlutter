import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      padding: EdgeInsets.symmetric(horizontal: 1, vertical: 0.5),
      height: size.height * 0.07,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.grey[350], width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        // icon: const Icon(Icons.arrow_drop_down),
        // iconSize: 28,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue;
            print(dropdownValue);
          });
        },
        items: <String>['My Feed', 'Best Matchs', 'Recommended Feed']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
