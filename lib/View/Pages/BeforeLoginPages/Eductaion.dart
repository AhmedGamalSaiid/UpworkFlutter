import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/EducationDetails.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Expertise.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

class Eduction extends StatefulWidget {
  @override
  _EductionState createState() => _EductionState();
}

class _EductionState extends State<Eduction> {
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
                          'Add your Schools you attended,areas of study, and degrees earned ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.9,
                          child: OutlinedButton.icon(
                            label: Text(
                              'Add Education',
                              style: TextStyle(
                                color: Color(0XFF37a000),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            icon: Icon(
                              Icons.add,
                              color: Color(0XFF37a000),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return EducationDetails();
                                  },
                                ),
                              )
                            },
                          ),
                        ),
                        SizedBox(height: size.height * 0.07),
                        SizedBox(height: size.height * 0.02),
                        Padding(
                            padding: const EdgeInsets.only(top: 3, bottom: 3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                  return Expertise();
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
                                          return EducationDetails();
                                        }),
                                      );
                                    },
                                  ),
                                ]))
                      ]))
            ]))));
  }
}
