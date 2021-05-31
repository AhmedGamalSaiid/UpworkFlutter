import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedJobs extends StatefulWidget {
  @override
  _SavedJobsState createState() => _SavedJobsState();
}

class _SavedJobsState extends State<SavedJobs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: size.width * 0.5,
          height: size.height * 0.5,
          child: SvgPicture.asset("assets/svg/saved.svg"),
        ),
        Text(
          "Keep track of jobs you're interested in. Select the heart icon on a job post to save it for later.",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
