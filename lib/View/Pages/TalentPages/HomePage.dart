import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/TalentPages/MyfeedPage.dart';
import 'package:upwork/View/Pages/TalentPages/Proposals.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/constanse.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Widget child;
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
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
            child: Text(
              "Jobs",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            CustomMenuButton(),
          ],
          bottom: TabBar(
            indicatorColor: bgUpwork,
            labelColor: Color(0xFF8ACC5E),
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Myfeed",
              ),
              Tab(
                text: "Saved",
              ),
              Tab(
                text: "Search"
                ,),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MyFeedPage(),
             MyFeedPage(),
              MyFeedPage(),
          ],
        ),
        bottomNavigationBar: _buildOriginDesign(),
      ),
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
