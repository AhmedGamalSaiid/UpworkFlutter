import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/DropDawn.dart';
import 'package:upwork/View/components/Talent/JobCard.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';
import 'package:upwork/constanse.dart';

// class MyFeedPage extends StatelessWidget {
//   const MyFeedPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

class MyFeedPage extends StatefulWidget {
  @override
  _MyFeedPageState createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                "View:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.start,
              )),
            // DropDown(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectDropDown(["Feed","Best Matches"],isExpand: true,),
            ),
             const Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
        RoundedButton(borderColor: Colors.grey[350],color: Colors.white,text:"There are new jobs.See them",textColor: bgUpwork) ,
        JobCard(),
        
             
         
        ],
      ),
    );
  }
}
