import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/CreateProfile.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Shared/Roundedinput.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

class Expertise extends StatefulWidget {
  String skillsVal;
  Expertise({this.skillsVal});
  @override
  _ExpertiseState createState() => _ExpertiseState();
}

class _ExpertiseState extends State<Expertise> {
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
                        Chip(
                          label: Text("Visual Commmunication"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Figma"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("User Interface Design"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Axure Rp"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Web Design"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Usability Testing"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Webflow"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Mobile App Design"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Adobe XD"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Competitive Analysis"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Game Design"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("Software Design"),
                          avatar: Icon(Icons.add),
                        ),
                        Chip(
                          label: Text("User Experience Design"),
                          avatar: Icon(Icons.add),
                        ),
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
                              MaterialPageRoute(builder: (context) {}),
                            );
                          },
                        ),
                      ]))
            ]),
          )),
    );
  }
}
