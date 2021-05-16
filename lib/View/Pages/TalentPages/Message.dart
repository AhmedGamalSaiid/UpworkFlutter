import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:upwork/Models/UserData.dart';
import 'package:upwork/Services/UserDataService.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/ClientMessage.dart';
import 'package:upwork/View/components/Talent/TalentMessage.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<ClientMessage> messages = [];
  UserDataService userservice = new UserDataService();
  Future<UserDataModel> get user => userservice.getUserData();

  @override
  Widget build(BuildContext context) {
    String now = DateFormat().add_jm().format(DateTime.now());
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Color(0xff5BBC2E)),
          title: Center(
            child: Column(
              children: [
                Text(
                  "client name",
                  style: TextStyle(fontFamily: 'sanserif'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    now,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CustomMenuButton(),
          ],
        ),
        body: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: ListView(
                  children: [
                    ClientMessage("hello"),
                    TalentMessage(
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                    TalentMessage("it to make a type specimen book"),
                    ClientMessage(
                        "and a search for 'lorem ipsum' will uncover many web sites still in their infancy"),
                    ClientMessage("hello"),
                    TalentMessage(
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                    TalentMessage("it to make a type specimen book"),
                    ClientMessage(
                        "and a search for 'lorem ipsum' will uncover many web sites still in their infancy"),
                  ],
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    color: Color(0xffF9F9F9),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone,
                              color: Color(0xff10A712),
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Color(0xff10A712),
                              size: 40,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Write message...",
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none),
                              onChanged: (value) => {
                                print(user),
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.send,
                              color: Color(0xff10A712),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )))
          ],
        ));
  }
}
