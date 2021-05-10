import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/CreateProfile.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Shared/Roundedinput.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

import 'CreateProfileEperience.dart';

// ignore: must_be_immutable
class Expertise extends StatefulWidget {
  String skillsVal;
  Expertise({this.skillsVal});
  @override
  _ExpertiseState createState() => _ExpertiseState();
}

class _ExpertiseState extends State<Expertise> {
  bool _selected = false;
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;
  bool _selected4 = false;
  bool _selected5 = false;
  bool _selected6 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                "Create Profile",
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
                    Text(
                      'Select your skills',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Wrap(
                      spacing: 15,
                      runSpacing: 5,
                      children: [
                        FilterChip(
                            selected: _selected,
                            label: Text("Visual Commmunication"),
                            avatar: Icon(Icons.add),
                            onSelected: (val) {
                              setState(() => _selected = val);
                            }),
                        FilterChip(
                            label: Text("Figma"),
                            selected: _selected1,
                            avatar: Icon(Icons.add),
                            onSelected: (val) {
                              setState(() => _selected1 = val);
                            }),
                        FilterChip(
                            label: Text("User Interface Design"),
                            avatar: Icon(Icons.add),
                            selected: _selected2,
                            onSelected: (val) {
                              setState(() => _selected2 = val);
                            }),
                        FilterChip(
                            label: Text("Axure Rp"),
                            avatar: Icon(Icons.add),
                            selected: _selected3,
                            onSelected: (val) {
                              setState(() => _selected3 = val);
                            }),
                        FilterChip(
                            selected: _selected4,
                            label: Text("Web Design"),
                            avatar: Icon(Icons.add),
                            onSelected: (val) {
                              setState(() => _selected4 = val);
                            }),
                        FilterChip(
                            selected: _selected5,
                            label: Text("Usability Testing"),
                            avatar: Icon(Icons.add),
                            onSelected: (val) {
                              setState(() => _selected5 = val);
                            }),
                        FilterChip(
                            selected: _selected6,
                            label: Text("Webflow"),
                            avatar: Icon(Icons.add),
                            onSelected: (val) {
                              setState(() => _selected6 = val);
                            }),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'No what you are looking for ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    RoundedInputField(
                      err: "Oops! this skills is not found",
                      hintText: "Start typing to search for skills ..... ",
                      onChanged: (value) {
                        widget.skillsVal = value;
                      },
                      icon: null,
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                            hoverColor: Colors.black,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF8ACC5E),
                              size: 20,
                            ),
                            onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Createprofile();
                                      },
                                    ),
                                  )
                                }),
                        RoundedButton(
                          color: Color(0XFF37a000),
                          text: "Next",
                          textColor: Colors.white,
                          borderColor: Color(0x00000000),
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return CreateProfileEperience();
                              }),
                            );
                          },
                        ),
                      ]))
            ]),
          )),
    );
  }
}
