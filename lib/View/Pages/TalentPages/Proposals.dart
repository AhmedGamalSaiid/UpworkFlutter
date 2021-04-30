import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/Active.dart';
import 'package:upwork/View/components/Talent/Archived.dart';

class ProposalsPage extends StatefulWidget {
  @override
  _ProposalsPageState createState() => _ProposalsPageState();
}

class _ProposalsPageState extends State<ProposalsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF1E4355),
              title: Center(
                child: Text(
                  'Proposals',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Color(0xFF8ACC5E),
                labelColor: Color(0xFF8ACC5E),
                unselectedLabelColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: 'Active'),
                  Tab(text: 'Archived'),
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              ActiveBody(),
              ArchivedBody(),
            ])));
  }
}
