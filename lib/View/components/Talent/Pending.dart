import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Pending",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            CustomMenuButton(),
          ],
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Text(
                    'when will I get paid? ',
                    style: TextStyle(
                      color: Color(0xFF8ACC5E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You have no pending payments',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Note:this report is updated every hour',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
        ));
  }
}
