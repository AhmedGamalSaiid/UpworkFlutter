import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Expertise.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Verifyemail.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

class Createprofile extends StatefulWidget {
  @override
  _CreateprofileState createState() => _CreateprofileState();
}

class _CreateprofileState extends State<Createprofile> {
  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tell us about the work you do ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'What is the main service you offer ? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ])),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SelectDropDown(
                  [
                    "Select the catagory",
                    "Accounting & Consulting",
                    "Admin Support",
                    "Customer Service",
                    "Data Science & Analytics",
                    "Design & Creative",
                    "Engineering & Architecture",
                    "IT & Networking",
                    "Legal",
                    "Sales & Marketing",
                    "Translation",
                    "Web, Mobile & Software Dev",
                    "Writing",
                  ],
                  isExpand: true,
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SelectDropDown(
                  [
                    "Select the SubCatagory",
                    " Desktop Software Development",
                    "Ecommerce Development",
                    "Game Development",
                    "Mobile Development",
                    "Other - Software Development",
                    "Product Management",
                    "QA & Testing",
                    "Scripts & Utilities",
                    "Web & Mobile Design",
                    "selected",
                    "Web Development",
                  ],
                  isExpand: true,
                )),
            SizedBox(
              height: 40,
            ),
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
                                      return Verifyemail();
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
                              return Expertise();
                            }),
                          );
                        },
                      ),
                    ]))
          ]),
        ),
      ),
    );
  }
}
