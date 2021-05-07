import 'package:flutter/material.dart';
import '../../../constanse.dart';

class SelectDropDown extends StatefulWidget {
  final List listItems;
  final bool isExpand;
  SelectDropDown(this.listItems, {this.isExpand});
  @override
  _SelectDropDownState createState() => _SelectDropDownState();
}

class _SelectDropDownState extends State<SelectDropDown> {
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.5,
            color: bgUpworkSection,
          ),
        ),
      ),
      child: DropdownButton(
        hint: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 10),
          child: Text(widget.listItems.first),
        ),
        value: dropdownValue,
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(Icons.arrow_drop_down),
        ),
        isExpanded: widget.isExpand == true ? true : false,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: widget.listItems.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }
}
