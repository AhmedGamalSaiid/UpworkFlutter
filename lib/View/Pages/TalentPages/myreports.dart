import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/Available.dart';
import 'package:upwork/View/components/Talent/Inreview.dart';
import 'package:upwork/View/components/Talent/Pending.dart';
import 'package:upwork/View/components/Talent/Workinprogress.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key key}) : super(key: key);

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Reports",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            CustomMenuButton(),
          ],
        ),
        body: Container(
            color: Color(0xFFF1F2F4),
            child: Column(children: <Widget>[
              Container(
                  color: Color(0xFFFFFFFF),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Work in Progress ',
                                  style: TextStyle(
                                    color: Color(0xFF8ACC5E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF8ACC5E),
                                  size: 20,
                                ),
                              ]),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 15.0),
                          child: Row(
                            children: [
                              InkWell(
                                hoverColor: Colors.black,
                                child: Text(r'$0.00',
                                    style: TextStyle(
                                        fontSize: 25,
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
                        ),
                        Divider(
                          color: Colors.black38,
                          height: 12,
                        ),
                      ])),
              Container(
                  color: Color(0xFFFFFFFF),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'In review ',
                                  style: TextStyle(
                                    color: Color(0xFF8ACC5E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF8ACC5E),
                                  size: 20,
                                ),
                              ]),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 15.0),
                          child: Row(
                            children: [
                              InkWell(
                                hoverColor: Colors.black,
                                child: Text(r'$0.00',
                                    style: TextStyle(
                                        fontSize: 25,
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
                        ),
                        Divider(
                          color: Colors.black38,
                          height: 12,
                        ),
                      ])),
              Container(
                  color: Color(0xFFFFFFFF),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Pending ',
                                  style: TextStyle(
                                    color: Color(0xFF8ACC5E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF8ACC5E),
                                  size: 20,
                                ),
                              ]),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, bottom: 15.0),
                            child: Row(
                              children: [
                                InkWell(
                                  hoverColor: Colors.black,
                                  child: Text(r'$0.00',
                                      style: TextStyle(
                                          fontSize: 25,
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
                            )),
                        Divider(
                          color: Colors.black38,
                          height: 10,
                        ),
                      ])),
              Container(
                  color: Color(0xFFFFFFFF),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Available ',
                                  style: TextStyle(
                                    color: Color(0xFF8ACC5E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF8ACC5E),
                                  size: 20,
                                ),
                              ]),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 15.0),
                          child: Row(
                            children: [
                              InkWell(
                                hoverColor: Colors.black,
                                child: Text(r'$0.00',
                                    style: TextStyle(
                                        fontSize: 25,
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
                        ),
                      ])),
            ])));
  }
}
