import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Verifyemail.dart';
import 'package:upwork/View/components/Shared/Roundedinput.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

class SignupDetails extends StatefulWidget {
  final String emailVal;
  SignupDetails({this.emailVal});
  @override
  _SignupDetailsState createState() => _SignupDetailsState();
}

class _SignupDetailsState extends State<SignupDetails> {
  bool valuefirst = false;
  bool valuesecond = false;
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Complete your free account setup",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Serif',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Text(widget.emailVal),
                ),
                RoundedInputField(
                  icon: Icons.person,
                  err: "Oops! name is incorrect",
                  hintText: "First name",
                  // onChanged: (value) {
                  //   widget.emailVal = value;
                  //   print(widget.emailVal);
                  // },
                ),
                RoundedInputField(
                  icon: Icons.person,
                  err: "Oops! name is incorrect",
                  hintText: "Last name",
                  // onChanged: (value) {
                  //   widget.emailVal = value;
                  //   print(widget.emailVal);
                  // },
                ),
                RoundedInputField(
                  icon: Icons.lock,
                  err: "Please enter more than 8 character",
                  hintText: "Create a password",
                  // onChanged: (value) {
                  //   widget.emailVal = value;
                  //   print(widget.emailVal);
                  // },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFF0F8E0F)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: dropdownValue == null
                            ? Text('Dropdown')
                            : Text(
                                "Select a country",
                                style: TextStyle(color: Colors.grey),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        style: TextStyle(color: Colors.grey),
                        items: ['Egypt', 'USA', 'Sudan', 'Germany'].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              dropdownValue = val;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                RoundedInputField(
                  icon: Icons.account_box_outlined,
                  err: "Invalid username",
                  hintText: "Username",
                  // onChanged: (value) {
                  //   widget.emailVal = value;
                  //   print(widget.emailVal);
                  // },
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      children: [
                        ListTileTheme(
                            contentPadding: EdgeInsets.zero,
                            child: CheckboxListTile(
                              title: Text(
                                "Yes! Send me genuinley useful emails every now and then to help me most out of Upwork",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff6d6d6d)),
                              ), //    <-- label
                              checkColor: Colors.greenAccent,
                              activeColor: Color(0XFF0F8E0F),
                              value: this.valuefirst,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value) {
                                setState(() {
                                  this.valuefirst = value;
                                });
                              },
                            )),
                        ListTileTheme(
                            contentPadding: EdgeInsets.zero,
                            child: CheckboxListTile(
                              title: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Yes! I understand and agree to the',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6d6d6d))),
                                TextSpan(
                                    text: 'Upwork terms of services. ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0XFF0F8E0F))),
                                TextSpan(
                                    text: 'including the ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6d6d6d))),
                                TextSpan(
                                    text: 'user agreement',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0XFF0F8E0F))),
                                TextSpan(
                                    text: ' and',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6d6d6d))),
                                TextSpan(
                                    text: ' privacy policy. ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0XFF0F8E0F))),
                              ])),
                              checkColor: Colors.greenAccent,
                              activeColor: Color(0XFF0F8E0F),
                              value: this.valuesecond,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value) {
                                setState(() {
                                  this.valuesecond = value;
                                });
                              },
                            )),
                      ],
                    )),
                RoundedButton(
                  color: Color(0XFF37a000),
                  text: "Create My account",
                  textColor: Colors.white,
                  borderColor: Color(0x00000000),
                  press: () {
                    // print(widget.emailVal);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Verifyemail(
                            // emailVal: widget.emailVal,
                            );
                      }),
                    );
                  },
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
