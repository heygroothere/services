import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:services/Screens/LogIn.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/Button.dart';
import 'package:services/widgets/TextField.dart';
import 'package:services/widgets/TextWidget.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'ForgotPassword';

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
        title: Text('Reset Password'),
        backgroundColor: kGreyColor,
      ),
      backgroundColor: kLightGreyColor,
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.symmetric(vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Kindly reset your Password and choose strong one!',
                    style: TextStyle(color: kDarkGreyColor),
                  ),
                  Textfield(hint: 'Enter your new Password', label: 'Password'),
                  Textfield(
                      hint: 'Enter the password again',
                      label: 'Confirm Password'),
                  Button(
                      width: 120,
                      height: 50,
                      fontSize: 18,
                      navigator: changeFlag,
                      color: kGreyColor,
                      text: 'Reset'),
                ],
              )),
          if (flag == true)
            Stack(
              children: [
                GestureDetector(
                    onTap: changeFlag,
                    child: Container(color: Colors.black.withOpacity(0.4))),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 250,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextWidget(
                            text: 'Congratulations!',
                            color: kDarkGreyColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          TextWidget(
                            text: 'You have Reset your Password',
                            color: kItemColor,
                            fontSize: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, LogIn.id);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 60,
                              child: TextWidget(
                                text: 'Ok',
                                color: kItemColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
