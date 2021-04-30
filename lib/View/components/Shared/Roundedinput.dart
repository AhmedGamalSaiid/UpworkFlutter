import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:upwork/constanse.dart';
import 'TextFieldContainer.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String err;
  final bool validate;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.err = "invalid",
    this.validate=true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: Form(
      child: TextFormField(       
        validator: (value) => EmailValidator.validate(value) ? null : err,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
