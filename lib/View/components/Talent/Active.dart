import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/TalentPages/JobDetails.dart';

class ActiveBody extends StatelessWidget {
  const ActiveBody({Key key}) : super(key: key);

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
                headerText: 'Offers(0)',
                content: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            'css3 / javascript /HTML ',
                            style: TextStyle(
                              color: Color(0xFF8ACC5E),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return JobDetails();
                              }),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                          child: Text(
                            'Initiated Feb 21 ,2021 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                          child: Text(
                            '8 days ago',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                          child: Text(
                            '2 months ago ',
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                          child: Text(
                            'General Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                )),
            // AccordionSection(
            //   isOpen: false,
            //   headerText: 'Invitations to interview (0)',
            //   content: Align(
            //       alignment: Alignment.topLeft,
            //       child: Text(
            //         'There is no invitions to interview...',
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 15),
            //       )),
            // ),
            AccordionSection(
              isOpen: false,
              headerText: 'Active Proposals (0)',
              content: Align(
                alignment: Alignment.topLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        child: Text(
                          'css3 / javascript /HTML ',
                          style: TextStyle(
                            color: Color(0xFF8ACC5E),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return JobDetails();
                            }),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          'Initiated Feb 21 ,2021 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          '8 days ago',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          '2 months ago ',
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          'General Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            AccordionSection(
              isOpen: false,
              headerText: 'Submmitted Proposals (1)',
              content: Align(
                alignment: Alignment.topLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        child: Text(
                          'css3 / javascript /HTML ',
                          style: TextStyle(
                            color: Color(0xFF8ACC5E),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return JobDetails();
                            }),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          'Initiated Feb 21 ,2021 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          '8 days ago',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          '2 months ago ',
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          'General Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ));
  }
}
