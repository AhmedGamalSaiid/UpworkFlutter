import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Shared/Roundedinput.dart';

class EducationDetails extends StatefulWidget {
  String schoolVal;
  EducationDetails({this.schoolVal});
  @override
  _EducationDetailsState createState() => _EducationDetailsState();
}

class _EducationDetailsState extends State<EducationDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Center(
                child: Text(
                  "Add Education",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              actions: [
                CustomMenuButton(),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(children: <Widget>[
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'School',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                        ]))
              ]),
            )));
  }
}
