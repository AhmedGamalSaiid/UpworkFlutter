import 'package:flutter/material.dart';

class ActiveContracts extends StatefulWidget {
  @override
  _ActiveContractsState createState() => _ActiveContractsState();
}

class _ActiveContractsState extends State<ActiveContracts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 10),
              child: Text(
                "Active Contracts",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              width: 360,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                      text:
                          "Contracts you're actively working on will appear here. ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "Start searching for new projects now !",
                            style: TextStyle(
                              color: Color(0xff57A72D),
                            ))
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
