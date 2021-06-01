import 'package:flutter/material.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/Pages/TalentPages/SubmitProposal.dart';
import 'package:intl/intl.dart';
import 'package:upwork/View/components/Shared/CustomCircleAvatar.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomLoader.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/BottomNav.dart';
import 'package:upwork/Models/ProposalsData.dart';
import 'package:upwork/Services/UserDataService.dart';
import 'package:upwork/View/components/Talent/OffersCard.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List<ProposalsDataModel> activePropals;
  getData() async {
    activePropals = await UserDataService().getofferProposalsData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return activePropals != null
        ? DefaultTabController(
            length: 3,
            child: Scaffold(
                drawer: CustomDrawer(),
                appBar: AppBar(
                  leading: Builder(
                    builder: (context) => IconButton(
                      icon: CustomCircleAvatar(),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      "Offers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  actions: [
                    CustomMenuButton(),
                  ],
                ),
                body: Container(
                  child: activePropals?.length > 0
                      ? Column(children: [
                          for (var i = 0; i < activePropals?.length; i++)
                            OffersCard(
                              activePropals[i],
                            ),
                        ])
                      : Text(""),
                ),
                bottomNavigationBar: BottomNav()))
        : CustomLoader();
  }
}
