import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/Available.dart';
import 'package:upwork/View/components/Talent/Inreview.dart';
import 'package:upwork/View/components/Talent/Pending.dart';
import 'package:upwork/View/components/Talent/Workinprogress.dart';

class ReportsPage extends StatefulWidget {
  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1E4355),
          title: Center(
            child: Text(
              'Reports',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Container(
            color: Color(0xFFF1F2F4),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black38),
                        )),
                    padding: EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 450.0,
                    height: 100.0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Work in Progress',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF8ACC5E),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xFF8ACC5E),
                              size: 25.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              hoverColor: Colors.black,
                              child: Text(r'$0.00',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return WorkInProgressPage();
                                    },
                                  ),
                                )
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black38),
                        )),
                    padding: EdgeInsets.all(10.0),
                    width: 450.0,
                    height: 100.0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'In review',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF8ACC5E),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xFF8ACC5E),
                              size: 25.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              hoverColor: Colors.black,
                              child: Text(r'$0.00',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return InReviewPage();
                                    },
                                  ),
                                )
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black38),
                        )),
                    padding: EdgeInsets.all(10.0),
                    width: 450.0,
                    height: 100.0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF8ACC5E),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xFF8ACC5E),
                              size: 20.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              hoverColor: Colors.black,
                              child: Text(r'$0.00',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return PendingPage();
                                    },
                                  ),
                                )
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    width: 450.0,
                    height: 100.0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Available',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF8ACC5E),
                                  fontWeight: FontWeight.bold),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF8ACC5E),
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              hoverColor: Colors.black,
                              child: Text(r'$0.00',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return AvailablePage();
                                    },
                                  ),
                                )
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ])));
  }
}
