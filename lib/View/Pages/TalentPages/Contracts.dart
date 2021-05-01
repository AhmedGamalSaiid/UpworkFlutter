import 'dart:ui';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/View/components/Talent/ActiveContracts.dart';
import 'package:upwork/constanse.dart';

class Contracts extends StatefulWidget {
  @override
  _ContractsState createState() => _ContractsState();
}

class _ContractsState extends State<Contracts> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Text("Contracts"),
        ),
        actions: [
          CustomMenuButton(),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            color: Color(0xffF1F2F4),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Earning available :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "100\$",
                            style: TextStyle(
                                color: Color(0xff57A72D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.more_horiz),
                          ))
                    ],
                  ),
                ),
                ActiveContracts()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildOriginDesign(),
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: bgUpwork,
      strokeColor: Colors.white,
      unSelectedColor: Color(0xff6c788a),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text(
            "Jobs",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 12),
          ),
          selectedTitle: Text(
            "Jobs",
            style: TextStyle(color: bgUpwork, fontSize: 14),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.description),
          title: Text(
            "Proposals",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Proposals",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
          // press:InkWell( onTap: ()=>{
          //   Navigator.push(
          //     context,
          //      MaterialPageRoute(
          //        builder: (context){
          //          return ProposalsPage();
          //        }
          //   )
          //   )
          // })
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.assignment_turned_in_sharp),
          title: Text(
            "Contracts",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Contracts",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text(
            "Messages",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Messages",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          title: Text(
            "Alerts",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Alerts",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
          badgeCount: 5,
          showBadge: true,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/proposals");
            break;
          // case 2:
          // Navigator.pushNamed(context, "/contracts");
          //   break;
          default:
        }
        setState(() {
          _currentIndex = index;
        });

        //  if(index==0){
        //     Navigator.push(context,
        //      MaterialPageRoute(builder: (context){return HomePage();}),);
        // }
      },
    );
  }
}
