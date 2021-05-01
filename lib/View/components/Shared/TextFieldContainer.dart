import 'package:flutter/material.dart';
import 'package:upwork/constanse.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  const TextFieldContainer({
    Key key,
    this.child,
    this.borderColor=bgUpwork,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.05),
      height: size.height * 0.07,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
