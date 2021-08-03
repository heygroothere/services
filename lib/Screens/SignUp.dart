import 'package:flutter/material.dart';
import 'package:services/Screens/LogIn.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/Button.dart';
import 'package:services/widgets/TextField.dart';

class SignUp extends StatefulWidget {
  static String id = 'Signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool flag = false;

  changeFlag() {
    flag == false
        ? setState(() {
            flag = true;
          })
        : setState(() {
            flag = false;
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: kGreyColor,
      ),
      backgroundColor: kLightGreyColor,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                Textfield(hint: 'Enter your full Name', label: 'Full Name'),
                Textfield(hint: 'Enter your Phone Number', label: 'Phone'),
                Button(
                    width: 150,
                    height: 50,
                    fontSize: 18,
                    topMargin: 20,
                    navigator: changeFlag,
                    color: kGreyColor,
                    text: 'Done'),
              ],
            ),
          ),
          if (flag == true)
            Stack(
              children: [
                GestureDetector(
                    onTap: changeFlag,
                    child: Container(color: Colors.black.withOpacity(0.4))),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 250,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Textfield(
                            label: 'OTP',
                            hint: 'Enter the sended Code',
                          ),
                          Button(
                              width: 130,
                              height: 50,
                              fontSize: 18,
                              navigator: () {
                                Navigator.pushNamed(context, LogIn.id);
                              },
                              color: kGreyColor,
                              text: 'Sign Up')
                        ],
                      )),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
