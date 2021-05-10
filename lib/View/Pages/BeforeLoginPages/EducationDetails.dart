import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';


class EducationDetails extends StatefulWidget {
  String schoolVal;
  EducationDetails({this.schoolVal});
  @override
  _EducationDetailsState createState() => _EducationDetailsState();
}

class _EducationDetailsState extends State<EducationDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Center(
                child: Text(
                  "Add Education",
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
                    padding:
                        const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'School',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xff6D6D6D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(),
                                hintText: "Ex:Northwestern University",
                                // onChanged: (value) {
                                //   widget.school = value;
                                //   print(widget.school);
                                // },
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Area of study',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '(Optional)',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xff6D6D6D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(),
                                hintText: "Ex:Computer Science",
                                // onChanged: (value) {
                                //   widget.areaofstudy = value;
                                //   print(widget.areaofstudy);
                                // },
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Degree',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '(Optional)',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xff6D6D6D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(),
                                hintText: 'Ex:Bachelor',
                                // onChanged: (value) {
                                //   widget.degree= value;
                                //   print(widget.degree);
                                // },
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '(Optional)',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: TextField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xff6D6D6D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(),
                                hintText: 'Describe your studies ,awards,etc..',
                                // onChanged: (value) {
                                //   widget.description = value;
                                //   print(widget.description);
                                // },
                              ),
                            ),
                          )
                        ]))
              ]),
            )));
  }
}
