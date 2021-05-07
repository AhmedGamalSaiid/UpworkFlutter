import 'package:flutter/material.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/View/Pages/TalentPages/JobDetails.dart';
import 'package:upwork/constanse.dart';

class JobCard extends StatefulWidget {
  final JobDataModel job;
  JobCard({this.job});
  @override
  _JobCardState createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return JobDetails();
          }));
        },
        child: Container(
          width: size.width * 1.0,
          height: size.height * 0.57,
          child: Card(
            color: Colors.grey[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.job.jobTitle,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: bgUpwork1,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.thumb_down_outlined,
                            color: Colors.grey[700],
                          ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey[700],
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.job.jobPaymentType +
                        ": " +
                        widget.job.jobBudget +
                        "\$ -posted 1h ago",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.001,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Less than 30 hrs/week",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1 to 3 months",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Hours needed",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Text(
                      "Duration",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Expert",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Experince Level",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ),
                Text("Hello we need to design website with wordpress"),
                Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                    Text("Payment verified"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
