import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/TalentPages/Message.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/BottomNav.dart';
import 'package:upwork/View/components/Talent/MsgView.dart';
//import 'package:upwork/constanse.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Text("Messages"),
        ),
        actions: [
          CustomMenuButton(),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Message();
                  }));
                },
                child: MsgView("client name",
                    "Lorem Ipsum has been the industry's standard dummy text ever"),
              ),
              MsgView("client name",
                  "Lorem Ipsum has been the industry's standard dummy text ever")
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
