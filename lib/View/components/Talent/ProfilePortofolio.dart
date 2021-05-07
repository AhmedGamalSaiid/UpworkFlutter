import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomIcon.dart';
import 'package:upwork/View/components/Talent/PortofolioItem.dart';
import '../../../constanse.dart';

class ProfilePortofolio extends StatefulWidget {
  ProfilePortofolio({Key key}) : super(key: key);

  @override
  _ProfilePortofolioState createState() => _ProfilePortofolioState();
}

class _ProfilePortofolioState extends State<ProfilePortofolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.5,
            color: bgUpworkSection,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CustomIcon(Icons.more_horiz),
              ),
              CustomIcon(Icons.add),
            ],
          ),
          Wrap(
            spacing: 15,
            runSpacing: 20,
            children: [
              for (var i = 0; i < 5; i++)
                PortfolioItem(
                  "assets/img/image.png",
                  "Forera Website For Food Delivery",
                )
            ],
          ),
        ],
      ),
    );
  }
}
