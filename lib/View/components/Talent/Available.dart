import 'package:flutter/material.dart';
import 'package:flutter_button/flutter_button.dart';
import 'package:flutter_text_anchor/flutter_text_anchor.dart';

class AvailablePage extends StatefulWidget {
  @override
  _AvailablePageState createState() => _AvailablePageState();
}

class _AvailablePageState extends State<AvailablePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1E4355),
          title: Center(
            child: Text(
              'Avaliable',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Text(
                    'you earned it!Where should we deliver your balance ? ',
                    style: TextStyle(
                      color: Color(0xFF8ACC5E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Button3D(
                    width: 300,
                    onPressed: () {},
                    child: Text(
                      "Set Up Payments",
                      style: TextStyle(
                        color: Color(0xFF8ACC5E),
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'No transactions in the last 30 days ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: Alignment.center,
                    child: TextAnchor(
                      textColor: Colors.black54,
                      linkColor: Color(0xFF8ACC5E),
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                      text:
                          '(View all transactions)[https://medium.com/@ranaranvijaysingh9].',
                      onTapLink: (link) {
                        print(link);
                      },
                    )),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Note:this report is updated every hour',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
        ));
  }
}
