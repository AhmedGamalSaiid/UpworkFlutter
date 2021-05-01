import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';

class WorkInProgressPage extends StatefulWidget {
  @override
  _WorkInProgressPageState createState() => _WorkInProgressPageState();
}

class _WorkInProgressPageState extends State<WorkInProgressPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: CircleAvatar(
                radius: 50,
                backgroundImage: ExactAssetImage("assets/img/06.jpg"),
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Center(
            child: Text(
              "Work In Progress",
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
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You have no work in progress',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
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
