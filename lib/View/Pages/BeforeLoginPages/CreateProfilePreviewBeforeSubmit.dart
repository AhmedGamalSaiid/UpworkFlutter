import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upwork/View/components/Shared/CustomIcon.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';
import '../../../constanse.dart';
import 'package:flutter_svg/svg.dart';

class CreateProfilePreviewBeforeSubmit extends StatefulWidget {
  @override
  _CreateProfilePreviewBeforeSubmitState createState() =>
      _CreateProfilePreviewBeforeSubmitState();
}

class _CreateProfilePreviewBeforeSubmitState
    extends State<CreateProfilePreviewBeforeSubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Create Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          CustomMenuButton(),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              color: bgUpworkSection,
              child: Container(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text("Preview profile",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]))),
          Container(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: SvgPicture.asset(
                            "assets/svg/createProfileSubmit.svg",
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Looking good, Tamer!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Make any necessary edits and then submit your profile. You can still edit it after you submit it.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoundedButton(
                              color: Color(0XFF37a000),
                              text: "Submit Profile",
                              textColor: Colors.white,
                              borderColor: Color(0x00000000),
                              press: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) {
                                //     return CreateProfilePreviewBeforeSubmit();
                                //   }),
                                // );
                              },
                            ),
                          ]))
                ],
              ),
            ),
          ),
          Container(
            color: bgUpworkSection,
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  ExactAssetImage("assets/img/06.jpg"),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: CustomIcon(Icons.mode_edit),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Romany Mounir",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.room,
                                  size: 15,
                                ),
                                Text("Sohag, Egypt"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("3:05 local time"),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: CustomIcon(Icons.mode_edit),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 15,
                      right: 20,
                      bottom: 15,
                    ),
                    child: Text(
                      "Web Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum loremipsum",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "\$30.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 3.0, left: 20, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Hourly rate",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Divider(color: Colors.black54),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 20, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Languages",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 3.0, left: 20, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "English: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Native or Bilingual",
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: bgUpworkSection,
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        top: 15,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: bgUpworkSection,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190.0),
                            child: CustomIcon(Icons.mode_edit),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Wrap(
                            spacing: 15,
                            runSpacing: 5,
                            children: [
                              Chip(
                                label: Text("HTML"),
                              ),
                              Chip(
                                label: Text("CSS"),
                              ),
                              Chip(
                                label: Text("JS"),
                              ),
                              Chip(
                                label: Text("jQuery"),
                              ),
                              Chip(
                                label: Text("Bootstrap"),
                              ),
                              Chip(
                                label: Text("React.js"),
                              ),
                              Chip(
                                label: Text("Angular"),
                              ),
                              Chip(
                                label: Text("C#"),
                              ),
                              Chip(
                                label: Text("Flutter"),
                              ),
                              Chip(
                                label: Text("C++"),
                              ),
                              Chip(
                                label: Text("TypeScript"),
                              ),
                              Chip(
                                label: Text("PHP"),
                              ),
                              Chip(
                                label: Text("C"),
                              ),
                              Chip(
                                label: Text("sass"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: bgUpworkSection,
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        top: 15,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: bgUpworkSection,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Employment history",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: CustomIcon(Icons.mode_edit),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "No items to display.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: bgUpworkSection,
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        top: 15,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: bgUpworkSection,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Education",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 160.0),
                            child: CustomIcon(Icons.mode_edit),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Frontend Training",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: bgUpworkSection,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        color: Color(0XFF37a000),
                        text: "Submit Profile",
                        textColor: Colors.white,
                        borderColor: Color(0x00000000),
                        press: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) {
                          //     return CreateProfilePreviewBeforeSubmit();
                          //   }),
                          // );
                        },
                      ),
                    ])),
          )
        ],
      )),
    );
  }
}
