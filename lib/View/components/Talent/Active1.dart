import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/Services/UserDataService.dart';
import 'package:upwork/Models/ProposalsData.dart';
import 'package:upwork/View/components/Talent/ProposalCard.dart';

class ActiveBody extends StatefulWidget {
  @override
  _ActiveBodyState createState() => _ActiveBodyState();
}

class _ActiveBodyState extends State<ActiveBody> {
  JobDataModel job;
  List<ProposalsDataModel> activePropals;
  List<ProposalsDataModel> submitPropals;
  List<ProposalsDataModel> hiredPropals;
  getData() async {
    activePropals = await UserDataService().getActiveProposalsData();
    setState(() {});
  }

  getData1() async {
    submitPropals = await UserDataService().getSubmittedProposalsData();
    setState(() {});
  }

  getData2() async {
    hiredPropals = await UserDataService().getHiredProposalsData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
    getData1();
    getData2();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xFFF1F2F4),
            border: Border.all(
              color: Theme.of(context).accentColor,
            )),
        child: Accordion(
          maxOpenSections: 1,
          headerTextStyle: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
          headerBackgroundColor: Colors.white,
          headerPadding: EdgeInsets.all(10.0),
          paddingBetweenClosedSections: 15.0,
          contentBackgroundColor: Colors.white,
          contentVerticalPadding: 5.0,
          contentHorizontalPadding: 5.0,
          children: [
            AccordionSection(
                isOpen: false,
                headerText: hiredPropals?.length > 0
                    ? "Offers (${hiredPropals?.length.toString()})"
                    : "Offers",
                content: Column(children: [
                  for (var i = 0; i < hiredPropals?.length; i++)
                    ProposalsCard(
                      hiredPropals[i].jobId,
                    ),
                ])),

            // // AccordionSection(
            // //   isOpen: false,
            // //   headerText: 'Invitations to interview (0)',
            // //   content:  ProposalsCard()
            // // ),
            AccordionSection(
              isOpen: false,
              headerText: "Active Proposals (${activePropals?.length})",
              content: activePropals?.length > 0
                  ? Column(children: [
                      for (var i = 0; i < activePropals?.length; i++)
                        ProposalsCard(
                          activePropals[i].jobId,
                        ),
                    ])
                  : Text(""),
            ),
            AccordionSection(
                isOpen: false,
                headerText: submitPropals?.length > 0
                    ? "Submmitted Proposals (${submitPropals?.length.toString()})"
                    : 'Submmitted Proposals',
                content: Column(children: [
                  for (var i = 0; i < submitPropals?.length; i++)
                    ProposalsCard(
                      submitPropals[i].jobId,
                    ),
                ])),
          ],
        ));
  }
}
