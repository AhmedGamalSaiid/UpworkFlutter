import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:path/path.dart';
import 'package:upwork/Services/DatabaseService.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/createprofilephoto.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';
import 'package:upwork/View/components/Talent/FixedPriceMoney.dart';
import 'package:upwork/View/components/Talent/HourlyRateMoney.dart';

import '../../../constanse.dart';
import '../../../firebaseApp.dart';

class SubmitProposal extends StatefulWidget {
  final JobDataModel job;
  SubmitProposal({this.job});
  @override
  _SubmitProposalState createState() => _SubmitProposalState();
}

class _SubmitProposalState extends State<SubmitProposal> {
  double hourlyRate = 0;
  String overView;
  String title;
  File _proposalFile;
  String proposalUrl;
  bool loading = false;

  ///NOTE: Only supported on Android & iOS
  ///Needs image_picker plugin {https://pub.dev/packages/image_picker}
  final picker = ImagePicker();

  Future pickImageGallary() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _proposalFile = File(pickedFile.path);
    });
  }

  // Future uploadImageToFirebase(BuildContext context) async {
  //   String fileName = basename(_proposalFile.path);
  //   FirebaseStorage storage = FirebaseStorage.instance;

  //   Reference firebaseStorageRef = storage.ref().child('proposalImages/$fileName');
  //   UploadTask uploadTask = firebaseStorageRef.putFile(_proposalFile);
  //   uploadTask.then((res) {
  //     res.ref.getDownloadURL().then((url) => {
  //           proposalUrl = url,
  //           url != null
  //               ? DatabaseService().updateSubCollectionDocument('job','proposal',''
  //                   auth.currentUser.uid, {'profilePhoto': proposalUrl})
  //               : loading = true,
  //         });
  //     print(proposalUrl);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(color: Colors.black),
          title: Center(
            child: Text(
              "Submit Proposal",
              style: TextStyle(fontFamily: 'sanserif', color: Colors.black),
            ),
          ),
        ),
        body: Container(
          color: Colors.black12,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Card(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 14.0, right: 14.0, top: 10.0, bottom: 5.0),
                      child: Row(
                        children: [
                          Text("Proposal settings",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 7.0, bottom: 7.0),
                        child: Container(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Propose with a Specialized profile",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 380,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SelectDropDown(
                                    [
                                      "General Profile",
                                      "Front-end development"
                                    ],
                                    isExpand: true,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "This Proposal requires ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "2 Connects   ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.help,
                                    color: bgUpwork,
                                    size: 15,
                                  ),
                                ],
                              ),
                              Text(
                                "When you submit this proposal, you'll have ",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "67 Connects ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "remaining.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                )),
                Card(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 10.0, bottom: 5.0),
                        child: Row(
                          children: [
                            Text("Job Details",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, right: 14.0, top: 7.0, bottom: 7.0),
                          child: Container(
                            width: 360,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "3 page html css design with animation",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "I need 3 pages animated html css desin.",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Please respond if you can work asap",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )),
                    ])),
                // if (widget.job.jobPaymentType == "Fixed Price") ...[
                //   FixedPriceMoney(),
                // ] else ...[
                //   HourlyRateMoney(),
                // ],
                Card(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 10.0, bottom: 5.0),
                        child: Row(
                          children: [
                            Text("Terms",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, right: 14.0, top: 7.0, bottom: 7.0),
                          child: Container(
                            width: 360,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "What is the rate you'd like to bid for this job?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 15),
                                  child: Text("Your profile rate : \$20/hr",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 14)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 2),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Hourly Rate",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          "Total amount the client will see",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 220,
                                            child: TextField(
                                                maxLines: 1,
                                                textAlignVertical:
                                                    TextAlignVertical.top,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.attach_money,
                                                    color: bgUpwork,
                                                  ),
                                                  border: OutlineInputBorder(),
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    hourlyRate =
                                                        double.parse(value);
                                                  });
                                                  print(hourlyRate);
                                                }),
                                          ),
                                          Text(" /hr"),
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Divider(color: Colors.black54),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 2),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Text("Upwork Service Fee",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          Text("    Explain this",
                                              style: TextStyle(
                                                  color: bgUpwork,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          "The Upwork Service Fee is 20% when you begin a contract with a new client. once you bill over \$500 with your client, the fee will be 10%. ",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 220,
                                            child: Row(children: [
                                              Icon(
                                                Icons.attach_money,
                                                color: bgUpwork,
                                              ),
                                              Text((hourlyRate * 20 / 100)
                                                  .toString())
                                            ]),
                                          ),
                                          Text(" /hr"),
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Divider(color: Colors.black54),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 2),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("You'll receive",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          "The estimated amount you'll receive after service fees",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 220,
                                            child: Row(children: [
                                              Icon(
                                                Icons.attach_money,
                                                color: bgUpwork,
                                              ),
                                              Text((hourlyRate * 80 / 100)
                                                  .toString())
                                            ]),
                                          ),
                                          Text(" /hr"),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          )),
                    ])),

                Card(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, top: 10.0, bottom: 5.0),
                        child: Row(
                          children: [
                            Text("Additional details",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, right: 14.0, top: 7.0, bottom: 7.0),
                          child: Container(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "Cover Letter",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Introduce yourself and explain why you're a strong candidate for this job feel free to suggest any changes to the job details or ask to schedule a video call",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 320,
                                            child: TextField(
                                              onChanged: (value) => {
                                                overView = value,
                                              },
                                              maxLines: 10,
                                              textAlignVertical:
                                                  TextAlignVertical.top,
                                              decoration: InputDecoration(
                                                hintText: "Add cover letter",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Attachments",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.help,
                                      color: bgUpwork,
                                      size: 15,
                                    ),
                                  ],
                                ),
                                RoundedButton(
                                  color: Colors.white,
                                  text: "Attach file",
                                  textColor: bgUpwork1,
                                  borderColor: Colors.black12,
                                  press: pickImageGallary,
                                ),
                              ],
                            ),
                          )),
                    ])),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: RoundedButton(
                            color: Color(0XFF37a000),
                            text: "Submit",
                            textColor: Colors.white,
                            borderColor: Color(0x00000000),
                            press: () {
                              DatabaseService().updateDocument(
                                  'talent', auth.currentUser.uid, {
                                'title': title,
                                'overview': overView,
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return CreateProfilePhoto();
                                }),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ])),
        ));
  }
}
