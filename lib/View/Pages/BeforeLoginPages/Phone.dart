import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
                      children: <Widget>[]))
            ]))));
  }
}
