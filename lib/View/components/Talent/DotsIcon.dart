import 'package:flutter/material.dart';

class DotsIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xff656565), width: 0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Icon(
        Icons.more_horiz,
        color: Color(0xff656565),
      ),
    );
  }
}
