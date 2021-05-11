import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Eductaion.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';

class EmployementDetails extends StatefulWidget {
  String schoolVal;

  EmployementDetails({this.schoolVal});
  @override
  _EmployementDetailsState createState() => _EmployementDetailsState();
}

class _EmployementDetailsState extends State<EmployementDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Center(
              child: Text(
                "Add Employment",
                style: TextStyle(color: Colors.white),
              ),
            ),
            actions: [
              CustomMenuButton(),
            ],
          ),
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Company',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            // onChanged: (value) {
                            //   widget.company = value;
                            //   print(widget.company);
                            // },
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            hintText: "City",
                            // onChanged: (value) {
                            //   widget.location = value;
                            //   print(widget.location);
                            // },
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Degree',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '(Optional)',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            hintText: 'Ex:Bachelor',
                            // onChanged: (value) {
                            //   widget.degree= value;
                            //   print(widget.degree);
                            // },
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dates Attended',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '(Optional)',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: SelectDropDown(
                            [
                              "From",
                              "2021",
                              "2020",
                              "2019",
                              "2018",
                              "2017",
                              "2016",
                              "2015",
                              "2014",
                              "2013",
                              "2012",
                              "2011",
                              "2010",
                            ],
                            isExpand: true,
                          )),
                      SizedBox(height: size.height * 0.03),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: SelectDropDown(
                            [
                              "To(or expected graduation year)",
                              "2028",
                              "2027",
                              "2026",
                              "2025",
                              "2024",
                              "2023",
                              "2022",
                              "2021",
                              "2020",
                              "2019",
                              "2018",
                              "2017",
                            ],
                            isExpand: true,
                          )),
                    ])),
            SizedBox(height: size.height * 0.03),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                'Description',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                '(Optional)',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(6),
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color(0xff6D6D6D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(),
                  hintText: 'Describe your studies ,awards,etc..',
                  // onChanged: (value) {
                  //   widget.description = value;
                  //   print(widget.description);
                  // },
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.4,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color(0xFF15A800),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.4,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF15A800)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: FlatButton(
                      color: Color(0xFF15A800),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Education();
                            },
                          ),
                        )
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                ]),
          ]))),
    );
  }
}
