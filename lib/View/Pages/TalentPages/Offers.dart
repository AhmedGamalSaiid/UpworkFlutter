import 'package:flutter/material.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/Pages/TalentPages/SubmitProposal.dart';
import 'package:intl/intl.dart';
import 'package:upwork/View/components/Shared/CustomCircleAvatar.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/BottomNav.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 10.0, bottom: 5.0),
                        // child: Text("${widget.job.jobTitle}",
                        child: Text("job Title",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                        child: Container(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text("Posted 7 hours ago",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                          child: Column(
                            children: [
                              Container(
                                width: 360,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 100,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              // "${widget.job.jobBudget}\$",
                                              " 15 \$",

                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                // "${widget.job.jobPaymentType}",
                                                "job Payment Type",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(3, 8, 3, 8),
                            child: InkWell(
                              child: Text(
                                "Decline",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) {
                              //       return SubmitProposal(widget.job);
                              //     }),
                              //   );
                              // },
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff018623),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(3, 8, 3, 8),
                            child: InkWell(
                              child: Text(
                                "Accept",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) {
                              //       return ProposalsPage();
                              //     }),
                              //   );
                              // },
                            ),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
            bottomNavigationBar: BottomNav()));
  }
}
