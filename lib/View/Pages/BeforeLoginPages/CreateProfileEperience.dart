import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomCircleAvatar.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/constanse.dart';

class CreateProfileEperience extends StatefulWidget {
  @override
  _CreateProfileEperienceState createState() => _CreateProfileEperienceState();
}

class _CreateProfileEperienceState extends State<CreateProfileEperience> {
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// For the selected Radio button Let's check this link https://www.youtube.com/watch?v=r5p-zhsrKUg
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Jobs",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          CustomMenuButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("What is your level of experience in this field ?",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 3, 15, 0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 10.0,
                        height: 10.0,
                        child: Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: bgUpwork,
                            onChanged: (val) {
                              print("$val");
                              setSelectedRadio(val);
                            })),
                  ],
                ),
                Text(
                  "Entry level",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "I am realtively new to this field",
                    style: TextStyle(color: Colors.black87, fontSize: 10),
                  ),
                ),
              ])),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 3, 15, 0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 10.0,
                        height: 10.0,
                        child: Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: bgUpwork,
                            onChanged: (val) {
                              print("$val");
                              setSelectedRadio(val);
                            })),
                  ],
                ),
                Text(
                  "Intermediate",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "I have substantial experience in this field",
                    style: TextStyle(color: Colors.black87, fontSize: 10),
                  ),
                ),
              ])),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 3, 15, 0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 10.0,
                        height: 10.0,
                        child: Radio(
                            value: 3,
                            groupValue: selectedRadio,
                            activeColor: bgUpwork,
                            onChanged: (val) {
                              print("$val");
                              setSelectedRadio(val);
                            })),
                  ],
                ),
                Text(
                  "Expert",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "I have comprehensive and deep expertise in this field",
                    style: TextStyle(color: Colors.black87, fontSize: 10),
                  ),
                ),
              ])),
            ),
          )
        ],
      ),
    );
  }
}