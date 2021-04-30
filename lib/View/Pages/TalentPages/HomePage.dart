import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:upwork/constanse.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        
        children: [
          Text("Home Page"),
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
            style: TextStyle(color: Color(0xff6c788a),fontSize: 12),
          ),
          selectedTitle: Text(
            "Jobs",
            style: TextStyle(color: bgUpwork,fontSize: 14),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.description),
          title: Text(
            "Proposals",
            style: TextStyle(color: Color(0xff6c788a),fontSize: 11),
          ),
          selectedTitle: Text(
            "Proposals",
            style: TextStyle(color: bgUpwork,fontSize: 13),
            
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.assignment_turned_in_sharp),
          title: Text(
            "Contracts",
            style: TextStyle(color: Color(0xff6c788a),fontSize: 11),
          ),
          selectedTitle: Text(
            "Contracts",
            style: TextStyle(color: bgUpwork,fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text(
            "Messages",
            style: TextStyle(color: Color(0xff6c788a),fontSize: 11),
          ),
          selectedTitle: Text(
            "Messages",
            style: TextStyle(color: bgUpwork,fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          title: Text(
            "Alerts",
            style: TextStyle(color: Color(0xff6c788a),fontSize: 11),
          ),
          selectedTitle: Text(
            "Jobs",
            style: TextStyle(color: bgUpwork,fontSize: 13),
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
