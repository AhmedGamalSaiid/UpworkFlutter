import 'package:flutter/material.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/Models/ProposalsData.dart';
import 'package:upwork/Services/JobDataService.dart';

class OffersCard extends StatefulWidget {
   final ProposalsDataModel propos;
  OffersCard(this.propos);
  @override
  _OffersCardState createState() => _OffersCardState();
}


class _OffersCardState extends State<OffersCard> {
   JobDataModel job;

  getData() async {
    job = await JobDataService().getJobData(widget.propos.jobId);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
