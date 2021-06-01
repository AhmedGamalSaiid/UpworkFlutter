import 'package:flutter/material.dart';
import 'package:upwork/Models/ProposalsData.dart';
import 'package:upwork/Services/UserDataService.dart';
import 'package:upwork/View/components/Talent/OffersCard.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<ProposalsDataModel> activePropals;
  getData() async {
    activePropals = await UserDataService().getActiveProposalsData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xFFF1F2F4),
            border: Border.all(
              color: Theme.of(context).accentColor,
            )),
        child: Column(
          children: [
            activePropals?.length > 0
                ? Column(children: [
                    for (var i = 0; i < activePropals?.length; i++)
                      OffersCard(
                        activePropals[i],
                      ),
                  ])
                : Text(""),
          ],
        ));
  }
}
