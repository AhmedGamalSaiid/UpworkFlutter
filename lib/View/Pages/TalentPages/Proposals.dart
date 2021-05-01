import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/Active.dart';
import 'package:upwork/View/components/Talent/Archived.dart';
import 'package:upwork/View/components/Talent/BottomNav.dart';



class ProposalsPage extends StatefulWidget {
  @override
  _ProposalsPageState createState() => _ProposalsPageState();
}

class _ProposalsPageState extends State<ProposalsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: CustomDrawer(),
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
                "Proposals",
                style: TextStyle(color: Colors.white),
              ),
            ),
            actions: [
              CustomMenuButton(),
            ],
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
          ]),
          bottomNavigationBar: BottomNav(),
        ));
  }

  
}
