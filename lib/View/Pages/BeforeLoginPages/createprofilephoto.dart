import 'package:flutter/material.dart';
import 'package:upwork/View/components/Shared/CustomDrawer.dart';
import 'package:upwork/View/components/Shared/CustomMenuButton.dart';
import 'package:file_picker/file_picker.dart';

class CreateProfilePhoto extends StatefulWidget {
  @override
  _CreateProfilePhotoState createState() => _CreateProfilePhotoState();
}

class _CreateProfilePhotoState extends State<CreateProfilePhoto> {
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
                  "Add profile photo",
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
                  padding: const EdgeInsets.only(left: 10, top: 30, bottom: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage(
                                "assets/img/default-avatar.jpg"),
                            minRadius: 50,
                            maxRadius: 75,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                            height: size.height * 0.07,
                            width: size.width * 0.9,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              child: Text(
                                'Select Profile Image',
                                style: TextStyle(
                                  color: Color(0XFF37a000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () async {
                                var picked =
                                    await FilePicker.platform.pickFiles();

                                if (picked != null) {
                                  print(picked.files.first.name);
                                }
                              },
                            )),
                        SizedBox(height: size.height * 0.04),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Profile photo guidelines',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                        SizedBox(height: size.height * 0.03),
                        new Column(
                          children: <Widget>[
                            new ListTile(
                              leading: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              title: Align(
                                child: new Text(
                                  'Professional-looking',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                alignment: Alignment(-1.5, 0),
                              ),
                            ),
                            new ListTile(
                              leading: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              title: Align(
                                child: new Text(
                                  'Crisp resolution',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                alignment: Alignment(-1.3, 0),
                              ),
                            ),
                            new ListTile(
                              leading: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              title: Align(
                                child: new Text(
                                  'Include only your face',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                alignment: Alignment(-1.5, 0),
                              ),
                            ),
                            new ListTile(
                              leading: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              title: Align(
                                child: new Text(
                                  'Have a netural background',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                alignment: Alignment(-1.5, 0),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: size.height * 0.07),
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
                                    "Cancel",
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {},
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    "Save",
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
