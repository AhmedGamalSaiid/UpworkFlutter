import 'package:flutter/material.dart';
import 'package:upwork/Models/UserData.dart';

import 'EditIcon.dart';
import 'PlusIcon.dart';

class ProfileLanguages extends StatefulWidget {
  final UserDataModel user;
  ProfileLanguages(this.user);
  @override
  _ProfileLanguagesState createState() => _ProfileLanguagesState();
}

class _ProfileLanguagesState extends State<ProfileLanguages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 15,
                  right: 20,
                  bottom: 15,
                ),
                child: Text(
                  "Languages",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              EditIcon(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: PlusIcon(),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "English: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        widget.user.englishProficiency,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                // widget.arabic != null
                //     ? Padding(
                //         padding: const EdgeInsets.only(top: 12.0),
                //         child: Row(
                //           children: [
                //             Text(
                //               "Arabic: ",
                //               style: TextStyle(
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 16,
                //               ),
                //             ),
                //             Text(
                //               widget.arabic,
                //               style: TextStyle(
                //                 fontSize: 14,
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     : Text(""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}