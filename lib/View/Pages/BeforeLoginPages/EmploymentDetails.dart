import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Eductaion.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';

class EmployementDetails extends StatefulWidget {
  String company;
  String location;
  String title;
  String description;

  EmployementDetails(
      {this.company, this.location, this.description, this.title});
  @override
  _EmployementDetailsState createState() => _EmployementDetailsState();
}

class _EmployementDetailsState extends State<EmployementDetails> {
  bool valuesecond = false;
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
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0XFF0F8E0F), width: 2.0),
                            ),
                          ),
                          onChanged: (value) {
                            widget.company = value;
                            print(widget.company);
                          },
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
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xff6D6D6D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0XFF0F8E0F), width: 2.0),
                                ),
                                hintText: "City",
                              ),
                              onChanged: (value) {
                                widget.location = value;
                                print(widget.location);
                              },
                            ),
                            SizedBox(height: size.height * 0.03),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
                                child: SelectDropDown(
                                  [
                                    "Afghanistan",
                                    "Albania",
                                    "Algeria",
                                    "American Samoa",
                                    "Australia",
                                    "Austria",
                                    "Bahrain",
                                    "Bangladesh",
                                    "Brazil",
                                    "British Virgin Islands",
                                    "Canada",
                                    "China",
                                    "Costa Rica",
                                    "Egypt",
                                    "France",
                                    "Georgia",
                                    "Germany",
                                    "Greenland",
                                    "Kuwait",
                                    "Lebanon",
                                    "Lesotho",
                                    "Liberia",
                                    "Libya",
                                    "South Africa",
                                    "Sudan",
                                    "Suriname",
                                    "Svalbard and Jan Mayen",
                                    "Swaziland",
                                    "Sweden",
                                    "Switzerland",
                                    "Syria",
                                    "Taiwan",
                                    "Tajikistan",
                                    "Tanzania",
                                    "Thailand",
                                    "Timor-Leste",
                                    "Togo",
                                    "Tokelau",
                                    "Tonga",
                                    "Trinidad and Tobago",
                                    "Tunisia",
                                    "Turkey",
                                    "Turkmenistan",
                                    "Turks and Caicos Islands",
                                    "Tuvalu",
                                    "Uganda",
                                    "Ukraine",
                                    "United Arab Emirates",
                                    "United Kingdom",
                                    "United States",
                                    "United States Minor Outlying Islands",
                                    "United States Virgin Islands",
                                    "Uruguay",
                                    "Uzbekistan",
                                    "Vanuatu",
                                    "Venezuela",
                                    "Vietnam",
                                    "Wallis and Futuna",
                                    "Western Sahara",
                                    "Yemen",
                                    "Yugoslavia",
                                    "Zambia",
                                    "Zimbabwe",
                                  ],
                                  isExpand: true,
                                )),
                          ])),
                      SizedBox(height: size.height * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Title',
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
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0XFF0F8E0F), width: 2.0),
                            ),
                          ),
                          onChanged: (value) {
                            widget.title = value;
                            print(widget.title);
                          },
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Period',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            children: <Widget>[
                              SelectDropDown(
                                [
                                  "Month ",
                                  "January",
                                  "February",
                                  "March",
                                  "April",
                                  "May",
                                  "June",
                                  "July",
                                  "August",
                                  "September",
                                  "October",
                                  "November",
                                  "December",
                                ],
                                isExpand: true,
                              ),
                              SizedBox(height: size.height * 0.03),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: SelectDropDown(
                                    [
                                      "year",
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
                                      "2009",
                                      "2008",
                                      "2007",
                                      "2006",
                                      "2005",
                                      "2004",
                                      "2003",
                                      "2002",
                                      "2001",
                                      "2000",
                                      "1999",
                                      "1998",
                                    ],
                                    isExpand: true,
                                  )),
                            ],
                          ))
                    ])),
            SizedBox(height: size.height * 0.03),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'through',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ]),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  children: <Widget>[
                    SelectDropDown(
                      [
                        "Month ",
                        "January",
                        "February",
                        "March",
                        "April",
                        "May",
                        "June",
                        "July",
                        "August",
                        "September",
                        "October",
                        "November",
                        "December",
                      ],
                      isExpand: true,
                    ),
                    SizedBox(height: size.height * 0.03),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: SelectDropDown(
                          [
                            "year",
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
                            "2009",
                            "2008",
                            "2007",
                            "2006",
                            "2005",
                            "2004",
                            "2003",
                            "2002",
                            "2001",
                            "2000",
                            "1999",
                            "1998",
                          ],
                          isExpand: true,
                        )),
                  ],
                )),
            SizedBox(height: size.height * 0.03),
            ListTileTheme(
              contentPadding: EdgeInsets.zero,
              child: CheckboxListTile(
                title: Text(
                  "I Currently work here",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                checkColor: Colors.greenAccent,
                activeColor: Color(0XFF0F8E0F),
                value: this.valuesecond,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {
                  setState(() {
                    this.valuesecond = value;
                  });
                },
              ),
            ),
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
            ]),
            Padding(
              padding: const EdgeInsets.all(6),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color(0xff6D6D6D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0XFF0F8E0F), width: 2.0),
                  ),
                ),
                onChanged: (value) {
                  widget.description = value;
                  print(widget.description);
                },
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
                ]),
          ]))),
    );
  }
}
