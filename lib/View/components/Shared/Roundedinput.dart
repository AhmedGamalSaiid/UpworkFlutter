import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
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
    this.validate = true,
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
            color: Color(0xff6D6D6D),
            size: 18,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Color(0xff6D6D6D),
              fontSize: 16,
              fontWeight: FontWeight.w300),
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
