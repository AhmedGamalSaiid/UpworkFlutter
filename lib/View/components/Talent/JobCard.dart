import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    final dateFormat = new DateFormat('yyyy-MM-dd');
    Size size = MediaQuery.of(context).size;

    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return JobDetails(widget.job);
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
                Text(
                  widget.job.jobTitle,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: bgUpwork1,
                    fontSize: 17,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.job.jobPaymentType +
                        ": " +
                        widget.job.jobBudget.toString() +
                        "\$ -posted ${dateFormat.format(widget.job.postTime.toDate())}",
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
                    widget.job.jobExperienceLevel,
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
                Text("${widget.job.jobDescription.substring(0, 40)}..."),
                Row(
                  children: widget.job.clientPaymentVerified
                      ? [
                          Icon(
                            Icons.verified,
                            color: Colors.blue,
                          ),
                          Text("Payment verified"),
                        ]
                      : [
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.red[200],
                          ),
                          Text("Payment unverified"),
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
