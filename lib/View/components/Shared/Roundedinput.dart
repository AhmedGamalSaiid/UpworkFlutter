import 'package:flutter/material.dart';
import 'package:upwork/constanse.dart';

import 'TextFieldContainer.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: bgUpwork,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: bgUpwork,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
