import 'package:flutter/material.dart';
import 'package:upwork/Models/JobDataModel.dart';
import 'package:upwork/View/components/Talent/JobCard.dart';
import 'package:upwork/View/components/Talent/SelectDropDown.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';
import 'package:upwork/constanse.dart';

class MyFeedPage extends StatefulWidget {
  final List<JobDataModel> jobs;
  MyFeedPage(this.jobs);
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
            child: SelectDropDown(
              ["Feed", "Best Matches"],
              isExpand: true,
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          RoundedButton(
              borderColor: Colors.grey[350],
              color: Colors.white,
              text: "There are new jobs.See them",
              textColor: bgUpwork),
          JobCard(),
          ListView.builder(
            itemCount: widget.jobs.length,
            itemBuilder: (BuildContext context, int index) {
                return Text(
                   widget.jobs[index].jobTitle,
                
                );
            }
          )
        ],
      ),
    );
  }
}
