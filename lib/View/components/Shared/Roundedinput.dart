import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'TextFieldContainer.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String err;
  final bool validate;
    final bool passInput;

  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.err = "invalid",
    this.validate = true,
    this.passInput=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: Form(
      child: TextFormField(
        obscureText:passInput ,
        validator: (value) => EmailValidator.validate(value) ? null : "etc",
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
