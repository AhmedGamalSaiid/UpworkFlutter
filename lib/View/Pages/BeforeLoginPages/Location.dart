import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/BeforeLoginPages/Phone.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:country_list_pick/country_list_pick.dart';

class Location extends StatefulWidget {
  String zip;
  String addressstree;
  String addressstree2;
  String city;
  String state;
  String country;
  final String emailVal;
  String firstName;
  String lastName;
  String password;
  String school;
  String company;

  Location({
    this.zip,
    this.addressstree,
    this.addressstree2,
    this.city,
    this.state,
    this.country,
    this.emailVal,
    this.firstName,
    this.lastName,
    this.password,
    this.school,
    this.company,
  });
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool _validate = false;
  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  bool _validate4 = false;
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  final _text2 = TextEditingController();
  final _text3 = TextEditingController();
  final _text4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                  "Create Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              actions: [
                CustomMenuButton(),
              ],
            ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Where are you based?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ]),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          'We take your privacy very seriously. Only your city and country will be shown to clients.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ])),
                  SizedBox(height: size.height * 0.03),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                  Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: CountryListPick(
                            theme: CountryTheme(
                              isShowFlag: true,
                              isShowTitle: true,
                              isShowCode: false,
                              isDownIcon: true,
                              showEnglishName: true,
                            ),
                            initialSelection: '+62',
                            onChanged: (CountryCode code) {
                              widget.country = code.name;
                              print(code.name);
                            },
                          ))),
                  SizedBox(height: size.height * 0.03),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Street Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(children: <Widget>[
                      TextField(
                        controller: _text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0XFF0F8E0F), width: 2.0),
                          ),
                          errorText:
                              _validate ? 'This field is required' : null,
                        ),
                        onChanged: (value) {
                          widget.addressstree = value;
                          print(widget.addressstree);
                        },
                      ),
                    ]),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(children: <Widget>[
                        TextField(
                          controller: _text1,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0XFF0F8E0F), width: 2.0),
                            ),
                            hintText: 'Apt/Suite',
                            errorText:
                                _validate1 ? 'This field is required' : null,
                          ),
                          onChanged: (value) {
                            widget.addressstree2 = value;
                            print(widget.addressstree2);
                          },
                        ),
                      ])),
                  SizedBox(height: size.height * 0.03),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'City',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(children: <Widget>[
                        TextField(
                          controller: _text2,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0XFF0F8E0F), width: 2.0),
                            ),
                            errorText:
                                _validate2 ? 'This field is required' : null,
                            hintText: 'Start typing your City',
                            prefixIcon: Icon(Icons.search),
                          ),
                          onChanged: (value) {
                            widget.city = value;
                            print(widget.city);
                          },
                        ),
                      ])),
                  SizedBox(height: size.height * 0.03),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'State/Province',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(children: <Widget>[
                      TextField(
                        controller: _text4,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0XFF0F8E0F), width: 2.0),
                          ),
                          errorText:
                              _validate4 ? 'This field is required' : null,
                        ),
                        onChanged: (value) {
                          widget.state = value;
                          print(widget.state);
                        },
                      ),
                    ]),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'zip/Postal code',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(children: <Widget>[
                        TextField(
                          controller: _text3,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0XFF0F8E0F), width: 2.0),
                            ),
                            errorText:
                                _validate3 ? 'This field is required' : null,
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            widget.zip = value;
                            print(widget.zip);
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.4,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: FlatButton(
                                  color: Colors.white,
                                  onPressed: () => {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                      color: Color(0xFF15A800),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.4,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF15A800)),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: FlatButton(
                                  color: Color(0xFF15A800),
                                  onPressed: () {
                                    setState(() {
                                      _text.text.isEmpty
                                          ? _validate = true
                                          : _validate = false;
                                    });
                                    setState(() {
                                      _text1.text.isEmpty
                                          ? _validate1 = true
                                          : _validate1 = false;
                                    });
                                    setState(() {
                                      _text2.text.isEmpty
                                          ? _validate2 = true
                                          : _validate2 = false;
                                    });
                                    setState(() {
                                      _text3.text.isEmpty
                                          ? _validate3 = true
                                          : _validate3 = false;
                                    });

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Phone(
                                            emailVal: widget.emailVal,
                                            firstName: widget.firstName,
                                            lastName: widget.lastName,
                                            password: widget.password,
                                            school: widget.school,
                                            company: widget.company,
                                            location: widget.country,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ]))
                ]))));
  }
}
