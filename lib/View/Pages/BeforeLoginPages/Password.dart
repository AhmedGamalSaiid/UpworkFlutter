import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upwork/View/Pages/TalentPages/HomePage.dart';
import 'package:upwork/View/components/Shared/BackGround.dart';
import 'package:upwork/View/components/Shared/Roundedinput.dart';
import 'package:upwork/View/components/beforeLogin/Loginbtn.dart';
import 'package:upwork/constanse.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/svg/login.svg",
              height: size.height * 0.12,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Ahmedgamal81995@gmail.com",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              icon: Icons.lock,
              err: "Oops! Password is incorrect",
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              color: Color(0XFF37a000),
              text: "Log in",
              textColor: Colors.white,
              borderColor: Color(0x00000000),
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                  return HomePage();
                }
              )
            );

              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    child: new Text(
                      'Forget password ?',
                      style: TextStyle(
                          color: bgUpwork, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {}),
                InkWell(
                    child: new Text(
                      'Not you?',
                      style: TextStyle(
                          color: bgUpwork, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {}),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
